// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

import "./MultiSigWallet.sol";

contract TwoFactor is MultiSigWallet{

    constructor(address[] memory _owners) MultiSigWallet(_owners, 2) {
        require(_owners.length == 2, "2FA contract requires 2 owners");
    }
}
