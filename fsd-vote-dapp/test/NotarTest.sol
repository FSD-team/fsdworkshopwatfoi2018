pragma solidity ^0.4.22;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Notar.sol";

contract NotarTest {

    Notar private notar;

    constructor() public {
        notar = new Notar();
    }

    function testNotarize() public {
        notar.notarize("test");

        Assert.equal(notar.checkDocument("test"), true, "Test document should be notarized!");
    }

    function testMissingDocument() public {
        Assert.equal(notar.checkDocument("test1"), false, "Test1 document shouldn't be notarized!");
    }

    function testIncorrectNotarize() public {
        notar.storeProof("test2");

        Assert.equal(notar.hasProof("test2"), true, "Test2 document shouldn't be notarized!");
    }
}