pragma solidity 0.4.25;

//Come up with the variables for donors
contract donate{
    string name;
    mapping (address => uint) public donations;
    uint balance;
    address owner;
    address newProject;
    address[] public donorAddress;
    address[] public allCharity;
    mapping (address => uint) public projects;
    string[] balance;
    string[] transactionDescription;
    uint transactionCount;

    event donated(address donor, uint donationAmount);


//Donor makes a donation
// function donate(uint donorID) public returns (uint) {
//     require(donorID >=0 && donorID <= 15);

//     donorAddress[donorID] = msg.sender;

//     return donorID;
// }

// retrieve the donors
function getDonors() public view returns (address[] memory){
    return donorAddress;
}

//allow donors to donate ethereum to the charity
function donate() public payable {
        projects[msg.sender] += msg.value;
        emit donated(msg.sender, msg.value);
    }

function getBalance() public constant returns (uint) {
        return address(this).balance;
    }

function getAccountBalance(address addr) public view returns(uint) {
		  return addr.balance;
	  }
      
function createProject(string memory name) public {
    address newProject = msg.sender;
    projects[msg.sender] = 0
    // allCharity.push[newProject];
    // return newProject;

}

}