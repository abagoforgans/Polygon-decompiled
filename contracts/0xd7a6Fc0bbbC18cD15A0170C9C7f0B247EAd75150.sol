contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 16
uint256 stor0; offset 8
address owner;
address uFragsAddress;
address marketOracleAddress;
uint256 deviationThreshold;
uint256 rebaseLag;
uint256 minRebaseTimeIntervalSec;
uint256 lastRebaseTimestampSec;
uint256 rebaseWindowOffsetSec;
uint256 rebaseWindowLengthSec;
uint256 epoch;
address orchestratorAddress;
address deployerAddress;

function minRebaseTimeIntervalSec() {
    return minRebaseTimeIntervalSec
}

function lastRebaseTimestampSec() {
    return lastRebaseTimestampSec
}

function marketOracle() {
    return marketOracleAddress
}

function rebaseLag() {
    return rebaseLag
}

function rebaseWindowOffsetSec() {
    return rebaseWindowOffsetSec
}

function owner() {
    return owner
}

function epoch() {
    return epoch
}

function rebaseWindowLengthSec() {
    return rebaseWindowLengthSec
}

function orchestrator() {
    return orchestratorAddress
}

function uFrags() {
    return uFragsAddress
}

function deployer() {
    return deployerAddress
}

function deviationThreshold() {
    return deviationThreshold
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function setOrchestrator(address arg1) {
    require msg.sender == owner
    orchestratorAddress = arg1
}

function setDeviationThreshold(uint256 arg1) {
    require msg.sender == owner
    deviationThreshold = arg1
}

function setRebaseLag(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    rebaseLag = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setMarketOracle(address arg1) {
    require msg.sender == deployerAddress
    marketOracleAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRebaseTimingParameters(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1 > 0
    require arg2 < arg1
    minRebaseTimeIntervalSec = arg1
    rebaseWindowOffsetSec = arg2
    rebaseWindowLengthSec = arg3
}

function inRebaseWindow() {
    require minRebaseTimeIntervalSec
    if block.timestamp % minRebaseTimeIntervalSec < rebaseWindowOffsetSec:
        return block.timestamp % minRebaseTimeIntervalSec >= rebaseWindowOffsetSec
    require rebaseWindowLengthSec + rebaseWindowOffsetSec >= rebaseWindowOffsetSec
    require minRebaseTimeIntervalSec
    return (block.timestamp % minRebaseTimeIntervalSec < rebaseWindowLengthSec + rebaseWindowOffsetSec)
}

function withinDeviationThreshold(uint256 arg1, uint256 arg2) {
    if not arg2:
        if arg1 >= arg2:
            require arg2 <= arg1
            if arg1 - arg2 < 0:
                return (arg1 - arg2 < 0)
            if arg1 >= arg2:
                return (arg1 < arg2)
        require arg1 <= arg2
        return (arg2 - arg1 < 0)
    require deviationThreshold * arg2 / arg2 == deviationThreshold
    if arg1 >= arg2:
        require arg2 <= arg1
        if arg1 - arg2 < deviationThreshold * arg2 / 10^18:
            return (arg1 - arg2 < deviationThreshold * arg2 / 10^18)
        if arg1 >= arg2:
            return (arg1 < arg2)
    require arg1 <= arg2
    return (arg2 - arg1 < deviationThreshold * arg2 / 10^18)
}

function initialize(address arg1, address arg2) {
    require msg.sender == deployerAddress
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    owner = arg1
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(240, 0, stor0.field_16) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
    deviationThreshold = 5 * 10^16
    rebaseLag = 10
    minRebaseTimeIntervalSec = 1800
    rebaseWindowOffsetSec = 1500
    rebaseWindowLengthSec = 180
    lastRebaseTimestampSec = 0
    epoch = 0
    uFragsAddress = arg2
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function computeSupplyDelta(uint256 arg1, uint256 arg2) {
    if not arg2:
        if arg1 < arg2:
            require arg1 <= arg2
            if arg2 - arg1 < 0:
                return 0
        else:
            require arg2 <= arg1
            if arg1 - arg2 < 0:
                return 0
            if arg1 < arg2:
                require arg1 <= arg2
                if arg2 - arg1 < 0:
                    return 0
    else:
        require deviationThreshold * arg2 / arg2 == deviationThreshold
        if arg1 < arg2:
            require arg1 <= arg2
            if arg2 - arg1 < deviationThreshold * arg2 / 10^18:
                return 0
        else:
            require arg2 <= arg1
            if arg1 - arg2 < deviationThreshold * arg2 / 10^18:
                return 0
            if arg1 < arg2:
                require arg1 <= arg2
                if arg2 - arg1 < deviationThreshold * arg2 / 10^18:
                    return 0
    require arg2 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg1 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if arg2 < 0:
        require arg1 - arg2 > arg1
    else:
        if arg1 - arg2 > arg1:
            require arg2 < 0
            require arg1 - arg2 > arg1
    require ext_code.size(uFragsAddress)
    call uFragsAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
        require Mask(1, 255, arg1 - arg2) != Mask(1, 255, ext_call.return_data[0])
    if not arg1 - arg2:
        if -1 == arg2:
            require (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
        if arg2:
            return ((arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) / arg2)
    else:
        if arg1 - arg2:
            require (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) / arg1 - arg2 == ext_call.return_data[0]
            if -1 == arg2:
                require (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
            if arg2:
                return ((arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) / arg2)
    revert
}

function rebase() {
    require msg.sender == orchestratorAddress
    require minRebaseTimeIntervalSec
    require block.timestamp % minRebaseTimeIntervalSec >= rebaseWindowOffsetSec
    require rebaseWindowLengthSec + rebaseWindowOffsetSec >= rebaseWindowOffsetSec
    require minRebaseTimeIntervalSec
    require block.timestamp % minRebaseTimeIntervalSec < rebaseWindowLengthSec + rebaseWindowOffsetSec
    require minRebaseTimeIntervalSec + lastRebaseTimestampSec >= lastRebaseTimestampSec
    require minRebaseTimeIntervalSec + lastRebaseTimestampSec < block.timestamp
    require minRebaseTimeIntervalSec
    require block.timestamp % minRebaseTimeIntervalSec <= block.timestamp
    require rebaseWindowOffsetSec >= 0
    lastRebaseTimestampSec = rebaseWindowOffsetSec + block.timestamp - (block.timestamp % minRebaseTimeIntervalSec)
    require epoch + 1 >= epoch
    epoch++
    require ext_code.size(marketOracleAddress)
    call marketOracleAddress.getData() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32]
    require 10^18 * deviationThreshold / 10^18 == deviationThreshold
    if ext_call.return_data[0] > 1000000 * 10^18:
        if 2777775 * 10^14 * 24 * 3600 < 10^18 * deviationThreshold / 10^18:
            require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            require rebaseLag
            require ext_code.size(uFragsAddress)
            if 0 / rebaseLag <= 0:
                call uFragsAddress.0x7a43e23f with:
                     gas gas_remaining wei
                    args epoch, 0 / rebaseLag
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                emit LogRebase(1000000 * 10^18, 0 / rebaseLag, block.timestamp, epoch);
            else:
                call uFragsAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / rebaseLag) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(uFragsAddress)
                if (0 / rebaseLag) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                    call uFragsAddress.0x7a43e23f with:
                         gas gas_remaining wei
                        args epoch, 0 / rebaseLag
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                    emit LogRebase(1000000 * 10^18, 0 / rebaseLag, block.timestamp, epoch);
                else:
                    call uFragsAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                    require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(uFragsAddress)
                    call uFragsAddress.0x7a43e23f with:
                         gas gas_remaining wei
                        args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                    emit LogRebase(1000000 * 10^18, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
        else:
            require ext_code.size(uFragsAddress)
            call uFragsAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require Mask(1, 255, ext_call.return_data[0]) != 0
            require 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 2777775 * 10^14 * 24 * 3600 == ext_call.return_data[0]
            require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if -1 == rebaseLag:
                require 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 != 0x8000000000000000000000000000000000000000000000000000000000000000
            require rebaseLag
            require ext_code.size(uFragsAddress)
            if 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / rebaseLag <= 0:
                call uFragsAddress.0x7a43e23f with:
                     gas gas_remaining wei
                    args epoch, 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / rebaseLag
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                emit LogRebase(1000000 * 10^18, 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / rebaseLag, block.timestamp, epoch);
            else:
                call uFragsAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / rebaseLag) + ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_code.size(uFragsAddress)
                if (2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / rebaseLag) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                    call uFragsAddress.0x7a43e23f with:
                         gas gas_remaining wei
                        args epoch, 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / rebaseLag
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                    emit LogRebase(1000000 * 10^18, 2777775 * 10^14 * 24 * 3600 * ext_call.return_data[0] / 10^18 / rebaseLag, block.timestamp, epoch);
                else:
                    call uFragsAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                    require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_code.size(uFragsAddress)
                    call uFragsAddress.0x7a43e23f with:
                         gas gas_remaining wei
                        args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                    emit LogRebase(1000000 * 10^18, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
    else:
        if ext_call.return_data[0] < 10^18:
            require ext_call.return_data[0] <= 10^18
            if -ext_call.return_data[0] + 10^18 < 10^18 * deviationThreshold / 10^18:
                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                require rebaseLag
                require ext_code.size(uFragsAddress)
                if 0 / rebaseLag <= 0:
                    call uFragsAddress.0x7a43e23f with:
                         gas gas_remaining wei
                        args epoch, 0 / rebaseLag
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                    emit LogRebase(ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                else:
                    call uFragsAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (0 / rebaseLag) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require ext_code.size(uFragsAddress)
                    if (0 / rebaseLag) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                        call uFragsAddress.0x7a43e23f with:
                             gas gas_remaining wei
                            args epoch, 0 / rebaseLag
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        emit LogRebase(ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                    else:
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x7a43e23f with:
                             gas gas_remaining wei
                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        emit LogRebase(ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
            else:
                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                require ext_call.return_data[0] - 10^18 <= ext_call.return_data[0]
                require ext_code.size(uFragsAddress)
                call uFragsAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                if (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    require Mask(1, 255, ext_call.return_data[0] - 10^18) != Mask(1, 255, ext_call.return_data[0])
                if ext_call.return_data[0] - 10^18:
                    require ext_call.return_data[0] - 10^18
                    require (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] - 10^18 == ext_call.return_data[0]
                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                if -1 == rebaseLag:
                    require (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 != 0x8000000000000000000000000000000000000000000000000000000000000000
                require rebaseLag
                require ext_code.size(uFragsAddress)
                if (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag <= 0:
                    call uFragsAddress.0x7a43e23f with:
                         gas gas_remaining wei
                        args epoch, (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                    emit LogRebase(ext_call.return_data[0], (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag, block.timestamp, epoch);
                else:
                    call uFragsAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ((-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require ext_code.size(uFragsAddress)
                    if ((-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                        call uFragsAddress.0x7a43e23f with:
                             gas gas_remaining wei
                            args epoch, (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        emit LogRebase(ext_call.return_data[0], (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag, block.timestamp, epoch);
                    else:
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x7a43e23f with:
                             gas gas_remaining wei
                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        emit LogRebase(ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
        else:
            require 10^18 <= ext_call.return_data[0]
            if ext_call.return_data[0] - 10^18 < 10^18 * deviationThreshold / 10^18:
                require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                require rebaseLag
                require ext_code.size(uFragsAddress)
                if 0 / rebaseLag <= 0:
                    call uFragsAddress.0x7a43e23f with:
                         gas gas_remaining wei
                        args epoch, 0 / rebaseLag
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                    emit LogRebase(ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                else:
                    call uFragsAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (0 / rebaseLag) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require ext_code.size(uFragsAddress)
                    if (0 / rebaseLag) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                        call uFragsAddress.0x7a43e23f with:
                             gas gas_remaining wei
                            args epoch, 0 / rebaseLag
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        emit LogRebase(ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                    else:
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x7a43e23f with:
                             gas gas_remaining wei
                            args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        emit LogRebase(ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
            else:
                if ext_call.return_data[0] >= 10^18:
                    require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    require ext_call.return_data[0] - 10^18 <= ext_call.return_data[0]
                    require ext_code.size(uFragsAddress)
                    call uFragsAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    if (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                        require Mask(1, 255, ext_call.return_data[0] - 10^18) != Mask(1, 255, ext_call.return_data[0])
                    if ext_call.return_data[0] - 10^18:
                        require ext_call.return_data[0] - 10^18
                        require (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] - 10^18 == ext_call.return_data[0]
                    require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    if -1 == rebaseLag:
                        require (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 != 0x8000000000000000000000000000000000000000000000000000000000000000
                    require rebaseLag
                    require ext_code.size(uFragsAddress)
                    if (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag <= 0:
                        call uFragsAddress.0x7a43e23f with:
                             gas gas_remaining wei
                            args epoch, (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                        emit LogRebase(ext_call.return_data[0], (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag, block.timestamp, epoch);
                    else:
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ((-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag) + ext_call.return_data[0] >= ext_call.return_data[0]
                        require ext_code.size(uFragsAddress)
                        if ((-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            require ext_code.size(uFragsAddress)
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                else:
                    require ext_call.return_data[0] <= 10^18
                    if -ext_call.return_data[0] + 10^18 < 10^18 * deviationThreshold / 10^18:
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if 0 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, 0 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (0 / rebaseLag) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if (0 / rebaseLag) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, 0 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], 0 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
                    else:
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ext_call.return_data[0] - 10^18 <= ext_call.return_data[0]
                        require ext_code.size(uFragsAddress)
                        call uFragsAddress.0x18160ddd with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            require Mask(1, 255, ext_call.return_data[0] - 10^18) != Mask(1, 255, ext_call.return_data[0])
                        if ext_call.return_data[0] - 10^18:
                            require ext_call.return_data[0] - 10^18
                            require (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] - 10^18 == ext_call.return_data[0]
                        require rebaseLag <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        if -1 == rebaseLag:
                            require (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 != 0x8000000000000000000000000000000000000000000000000000000000000000
                        require rebaseLag
                        require ext_code.size(uFragsAddress)
                        if (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag <= 0:
                            call uFragsAddress.0x7a43e23f with:
                                 gas gas_remaining wei
                                args epoch, (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                            emit LogRebase(ext_call.return_data[0], (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag, block.timestamp, epoch);
                        else:
                            call uFragsAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ((-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag) + ext_call.return_data[0] >= ext_call.return_data[0]
                            require ext_code.size(uFragsAddress)
                            if ((-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag) + ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a:
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], (-1 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / rebaseLag, block.timestamp, epoch);
                            else:
                                call uFragsAddress.0x18160ddd with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                require -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                require ext_code.size(uFragsAddress)
                                call uFragsAddress.0x7a43e23f with:
                                     gas gas_remaining wei
                                    args epoch, -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] <= 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a
                                emit LogRebase(ext_call.return_data[0], -ext_call.return_data[0] + 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a, block.timestamp, epoch);
}



}
