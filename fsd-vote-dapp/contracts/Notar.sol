pragma solidity ^0.4.22;


contract Notar {

    constructor() public  {
    }
    /**
     * State variable
     */
    bytes32 private proof;
    // calculate and store the proof for a document
    // *transactional function*
    function notarize(string document) public  {
        proof = proofFor(document);
    }
    // helper function to get a document's sha256
    // *read-only function*
    function proofFor(string document) public pure returns (bytes32) {
        return sha256(abi.encodePacked(document));
    }
    /**
     * Return value of proof
     */
    function getProof() public view returns (bytes32){
        return proof;
    }
}
