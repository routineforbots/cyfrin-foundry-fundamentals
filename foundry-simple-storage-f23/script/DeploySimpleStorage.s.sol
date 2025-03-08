// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        // Start actually broadcasting the transaction
        vm.startBroadcast();

        SimpleStorage simpleStorage = new SimpleStorage();

        vm.stopBroadcast();

        return simpleStorage;
    }
}

// forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url sepolia --broadcast --verify -vvvv --sender 0x742d35cc6634c0532925a3b844f5131b01392206
