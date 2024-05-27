// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Voting {
    struct Candidate {
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate) public candidates;
    mapping(address => bool) public voters;
    uint public candidatesCount;
    address public owner;

    event CandidateAdded(string name);
    event VoteCast(address voter, uint candidateNum);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "Only owner can execute this operation");
        _;
    }

    function addCandidate(string memory _name) public onlyOwner {
        candidates[candidatesCount] = Candidate(_name, 0);
        candidatesCount++;
        emit CandidateAdded(_name);
    }

    function vote(uint _candidateNum) public {
        require(!voters[msg.sender], "You have already voted");
        require(_candidateNum < candidatesCount, "Invalid candidate number");
        candidates[_candidateNum].voteCount++;
        voters[msg.sender] = true;
        emit VoteCast(msg.sender, _candidateNum);
    }
}
