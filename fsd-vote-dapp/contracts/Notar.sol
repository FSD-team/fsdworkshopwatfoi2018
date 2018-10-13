pragma solidity ^0.4.22;


contract Notar {

    constructor() public  {
    }
    /**
     * State variable
     */
    mapping (bytes32 => bool ) private proofs;
    // calculate and store the proof for a document
    // *transactional function*
    function notarize(string document) public  {
        proofs[proofFor(document)] = true;
    }
    // helper function to get a document's sha256
    // *read-only function*
    function proofFor(string document) public pure returns (bytes32) {
        return sha256(abi.encodePacked(document));
    }
    /**
     * Return value of proof
     */
    function hasProof(string proofDoc) public view 
        returns (bool){
        return proofs[proofFor(proofDoc)];
    }

}
