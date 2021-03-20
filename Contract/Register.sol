pragma solidity >=0.4.22 <0.7.0;

contract Register {
    //charity
    address[] public allCharities;
    
    function createCharity() public {
        address newCharity =  msg.sender ;
        allCharities.push(newCharity);
    }
    
    function getAllCharity() public view returns (address[] memory) {
        return allCharities;
    }

    //Donors
    struct Donator {
    string name;
    string id;
    uint donated_amount;}

    Donator[] public allDonors;
    
    function donorJoin(string memory name, string memory id, uint donated_amount) public {
    
    Donator memory newDonator = Donator({
        name: name,
        id: id,
        donated_amount:donated_amount
    });
        allDonors.push(newDonator);
    }

    //beneficiaries
    struct Beneficiary{
    string name;
    string id;
    uint received_amount;}

    Beneficiary[] public allBeneficiary;
    
    function beneficiaryJoin(string memory name, string memory id, uint received_amount) public {
    
    Beneficiary memory newBeneficiary = Beneficiary({
        name: name,
        id: id,
        received_amount:received_amount
    });
        allBeneficiary.push(newBeneficiary);
    }


}