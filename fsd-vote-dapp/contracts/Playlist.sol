pragma solidity ^0.4.22;

contract Playlist {
    struct Request {
        string description;
        uint value; //Amount of money to be sent
        address recepient;
        bool complete;//Flag to mark request as complete
    }

    Request[] public requests;//List of requests
    address public manager; //address of person who is managing playlist
    uint public minimunContribution; //minimun donation required to  be considered a contributor or approver
    address[] public approvers; //List of addresses of every person who has donated money

    /**
     * Modifier execute constructor into function body 
     * It allows control the behavior of smart contract functions.
     */
    modifier restricted() {
        require(msg.sender == manager);
        _;                              //Mark where to execute constructor
    }

    constructor(uint minimun) public {
        manager = msg.sender; //Set manager of contract 
        minimunContribution = minimun;
    }
    //Payable - able to receive some amount of money
    function contribute() public payable {
        //Require function revert if condition is not met
        require(msg.value > minimunContribution);

        approvers.push(msg.sender); //Who send message, add to approvers if condition is met
    }

    //function createRequest(string desc, uint value) public restricted () {

    //}
}

