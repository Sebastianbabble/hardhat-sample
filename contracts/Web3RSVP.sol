//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Web3RSVP{
    //1. Event struct that contains all properties someone would need to create an event
    // eventDataCID is a string url for all data stored offchain on IPFS
    struct CreateEvent{
        bytes32 eventId;
        string eventDataCID;
        address eventOwner;
        uint256 eventTimestamp;
        uint256 deposit;
        uint256 maxCapacity;
        address[] confirmedRSVPs;
        address[] claimedRSVPs;
        bool paidOut;
    }

    //2. Mapping for to index all events. idToEvent(321) = that certain event
    mapping (bytes32 => CreateEvent) public idToEvent;
    

}
