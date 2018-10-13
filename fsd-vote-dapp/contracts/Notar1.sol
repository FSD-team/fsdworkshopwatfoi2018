pragma solidity ^0.4.22;


contract Notar1 {
    constructor() public  {
    }

    /**
     * State variable
     */
    bytes32[] private proofs;


    function storeProof(bytes32 proof) public {
        proofs.push(proof);
    }
    // calculate and store the proof for a document
    // *transactional function*
    function notarize(string document) public  {
        bytes32 proof = proofFor(document);
        storeProof(proof);
    }
    // helper function to get a document's sha256
    // *read-only function*
    function proofFor(string document) public  pure returns (bytes32) {
        return sha256(abi.encodePacked(document));
    }
    /**
     *
     */
    function hasProof(bytes32 proof) public view returns (bool){
        uint proofsLength = proofs.length;
        for(uint256 i; i < proofsLength; i++){
            if(proofs[i] == proof){
                return true;
            }
        }
        return false;
    }

    function checkDocument(string document) public view returns (bool){
        bytes32 proof = proofFor(document);
        return hasProof(proof);
    }
}
