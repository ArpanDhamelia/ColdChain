//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;
library CryptoSuite {
    function splitSignature(bytes memory sig) internal pure returns(uint8 v, bytes32 r, bytes32 s) {
        require(sig.length == 65);
        assembly {
             // first 32bytes
             r := mload(add(sig, 32))
             // next 32bytes
             s := mload(add(sig, 64))
             // last 32bytes
             v := byte(0, mload(add(sig, 96)))
        }
        return (v, r, s);
    }
    function recoverSigner(bytes32 message, bytes memory sig) internal pure returns (address) {
        (uint8 v, bytes32 r, bytes32 s) = splitSignature(sig);
        bytes memory prefix = "\x19Ethereum Signed Message:\n32";
        bytes32 prefixedHash = keccak256(abi.encodePacked(prefix,message));
        return ecrecover(prefixedHash,v,r,s);
    }
}

contract ColdChain {
    enum certificateStatus { MANUFACTURED, DELERING_INTERNATIONAL, STORED, DELERING_LOCAL, DELIVERED }

    enum Role { ISSUER, VERIFIER, PROVER }

    struct Entity {
        address id;
        Role role;
        uint[] certificateIds;
    }

    struct Certificate {
        uint id;
        Entity issuer;
        Entity prover;
        bytes signature;
        certificateStatus status;
    }

    struct VaccineBatch {
        uint id;
        string brand;
        address manufacturer;
        uint[] certificateIds;
    }
    uint public constant MAX_CERTIFICATIONS = 2;

    uint[] public certificateIds;
    uint[] public vaccineBatchIds;

    mapping( uint => VaccineBatch ) public vaccineBatchs;
    mapping( uint => Certificate) public certificates;
    mapping( address => Entity) public entities;

    event AddEntity ( address entityId, string entityRole);
    event AddVaccineBatch ( uint vaccineBatchId, address indexed manufacturer );
    event IssueCertificate ( address indexed issuer, address indexed prover, uint certificateId );


    function addEntity(address _id , string memory _role) public {
        Role role = unmarshalMode(_role);
        uint[] memory _certificateIds = new uint[](MAX_CERTIFICATIONS);
        Entity memory entity = Entity(_id, role,_certificateIds);
        entities[_id] = entity;
        emit AddEntity(entity.id,_role);
    }

    function unmarshalMode(string memory _role) private pure returns (Role){
        bytes32 encodedMode = keccak256(abi.encodePacked(_role));
        bytes32 encodedMode0 = keccak256(abi.encodePacked("ISSUER"));
        bytes32 encodedMode1 = keccak256(abi.encodePacked("PROVER"));
        bytes32 encodedMode2 = keccak256(abi.encodePacked("VERIFIER"));
        if(encodedMode == encodedMode0) {
            return Role.ISSUER;
        }
        else if(encodedMode == encodedMode1) {
            return Role.PROVER;
        }
        else if(encodedMode == encodedMode2) {
            return Role.VERIFIER;
        }
    }

    /////////////////////////////////////////////////////////////////////////////////

    function addVaccineBatch(string memory brand, address manufacturer ) public returns (uint) {
        uint[] memory _certificateIds = new uint[](MAX_CERTIFICATIONS);
        uint id = vaccineBatchIds.length;
        VaccineBatch memory batch = VaccineBatch(id,brand,manufacturer,_certificateIds);
        vaccineBatchs[id] = batch;
        vaccineBatchIds.push(id);
        emit AddVaccineBatch(batch.id,manufacturer);
        return id;
    }

    ////////////////////////////////////////////////////////////////////////////////

    function issueCertificate(address _issuer, address _prover, string memory _status, 
            uint vaccineBatchId, bytes memory signature) public returns (uint){
        Entity memory issuer = entities[_issuer];
        require(issuer.role == Role.ISSUER);

        Entity memory prover = entities[_prover];
        require (prover.role == Role.PROVER);

        certificateStatus status = unmarshalStatus(_status);

        uint id = certificateIds.length;
        Certificate memory certificate = Certificate(id,issuer,prover,signature,status);
        certificateIds.push(certificateIds.length);
        certificates[certificateIds.length-1] = certificate;
        emit IssueCertificate(_issuer,_prover,certificateIds.length-1);
        return certificateIds.length-1;
    } 

    function unmarshalStatus(string memory _status) private pure returns (certificateStatus){
        bytes32 encodedStatus = keccak256(abi.encodePacked(_status));
        bytes32 encodedStatus0 = keccak256(abi.encodePacked("MANUFACTURED"));
        bytes32 encodedStatus1 = keccak256(abi.encodePacked("DELERING_INTERNATIONAL"));
        bytes32 encodedStatus2 = keccak256(abi.encodePacked("STORED"));
        bytes32 encodedStatus3 = keccak256(abi.encodePacked("DELERING_LOCAL"));
        bytes32 encodedStatus4 = keccak256(abi.encodePacked("DELIVERED"));
        
        if(encodedStatus == encodedStatus0) {
            return certificateStatus.MANUFACTURED;
        }
        else if(encodedStatus == encodedStatus1) {
            return certificateStatus.DELERING_INTERNATIONAL;
        }
        else if(encodedStatus == encodedStatus2) {
            return certificateStatus.STORED;
        }
        else if(encodedStatus == encodedStatus3) {
            return certificateStatus.DELERING_LOCAL;
        }
        else if(encodedStatus == encodedStatus4) {
            return certificateStatus.DELIVERED;
        }
        revert("Received Invalid Certificate Status");

    }

    /////////////////////////////////////////////////////////////////////////

    function isMatchingSignature(bytes32 message, uint id, address issuer) public view returns (bool){
        Certificate memory cert = certificates[id];
        require(cert.issuer.id == issuer);
        address recoveredSigner = CryptoSuite.recoverSigner(message,cert.signature);
        return recoveredSigner == cert.issuer.id;
    }







    

}