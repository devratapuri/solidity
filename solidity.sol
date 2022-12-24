// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract TokenVesting {
  // The total number of tokens that will be released
  uint256 public totalSupply;

  // The number of tokens to be released at each vesting event
  uint256 public vestingAmount;
  uint256 verstingAmountManagement = 435000000;
  uint256 vestingAmountprojectDevlopment = 120000000;
  uint256 vestingAmountAandL = 60000000;

  // The time at which the first vesting event will occur
  uint256 public vestingStart;

  // The number of seconds between each vesting event
  uint256 public vestingPeriod;

  // The address of the token contract that will be used for the vesting
  address public tokenAddress;

  // Mapping from token holder addresses to their vesting status
  mapping(address => bool) public vestingStatus;

  // Event emitted when tokens are released to a token holder
  event TokensReleased(address indexed recipient, uint256 amount);

  uint256 _totalSupply = 2940000000;

  // Constructor function that initializes the contract with the specified values
  constructor(
    address _tokenAddress
  ) public {
    tokenAddress = _tokenAddress;
  }

  // Function that releases the vesting tokens to the specified token holder
  function releaseVestedTokensStaffEswap(uint256 _vestingPeriod,
    uint256 _vestingStart) public payable {
   address _tokenHolder = 0x90c28d0889Bc80bf792009FBdf2d3D23ca42832C;
   vestingPeriod = _vestingPeriod;
    vestingStart = _vestingStart;
    // Check if the specified token holder has reached the vesting cliff
    if (block.timestamp >= 63072000) {
      // Check if the specified token holder has not received their tokens yet
      if (!vestingStatus[_tokenHolder]) {
        // Calculate the number of vesting periods that have passed
        uint256 periods = (block.timestamp - vestingStart) / vestingPeriod;

        // Calculate the number of tokens to be released
        uint256 amount = 200000000;

        // Ensure that we do not release more tokens than the total supply
        if (amount > totalSupply) {
          amount = totalSupply;
        }

        // Call the token contract to transfer the vesting tokens to the token holder
        IERC20(tokenAddress).transfer(_tokenHolder, amount);

        // Update the vesting status of the token holder
        vestingStatus[_tokenHolder] = true;

        // Emit the TokensReleased event
        emit TokensReleased(_tokenHolder, amount);
      }
    }
  }

   // Function that releases the vesting tokens to the specified token holder
  function releaseVestedTokensManagement(uint256 _vestingPeriod,
    uint256 _vestingStart) public payable {
      vestingPeriod = _vestingPeriod;
    vestingStart = _vestingStart;
      address _tokenHolder = 0xEBBBC39E2089282db5f5c49AaCEE329bd19E9c29;
    // Check if the specified token holder has reached the vesting cliff
    if (block.timestamp >= vestingStart) {
      // Check if the specified token holder has not received their tokens yet
      if (!vestingStatus[_tokenHolder]) {
        // Calculate the number of vesting periods that have passed
        uint256 periods = (block.timestamp - vestingStart) / vestingPeriod;

        // Calculate the number of tokens to be released
        uint256 amount = (verstingAmountManagement)/10*2;

        // Ensure that we do not release more tokens than the total supply
        if (amount > totalSupply) {
          amount = totalSupply;
        }

        // Call the token contract to transfer the vesting tokens to the token holder
        IERC20(tokenAddress).transfer(_tokenHolder, amount);

        // Update the vesting status of the token holder
        vestingStatus[_tokenHolder] = true;

        verstingAmountManagement = verstingAmountManagement - amount;

        // Emit the TokensReleased event
        emit TokensReleased(_tokenHolder, amount);
      }
    }
  }
   // Function that releases the vesting tokens to the specified token holder
  function releaseVestedTokensIDO(uint256 _vestingPeriod,
    uint256 _vestingStart) public payable {
      vestingPeriod = _vestingPeriod;
    vestingStart = _vestingStart;
     address _tokenHolder = 0x3c5a28945208f1b87588C52f3a784509712281E0;
     // Calculate the number of tokens to be released
        uint256 amount = 15000000;
        // Call the token contract to transfer the vesting tokens to the token holder
        IERC20(tokenAddress).transfer(_tokenHolder, amount);

        // Update the vesting status of the token holder
        vestingStatus[_tokenHolder] = true;

        // Emit the TokensReleased event
        emit TokensReleased(_tokenHolder, amount);
  }



   function releaseVestedTokensLockedCoin(uint256 _vestingPeriod,
    uint256 _vestingStart) public payable {
   vestingPeriod = _vestingPeriod;
    vestingStart = _vestingStart;

       address _tokenHolder = 0xa6bc9f8EFF13e8C56A7C5C64Cc6BbCFb23161393;
    // Check if the specified token holder has reached the vesting cliff
    if (block.timestamp >= 94608000) {
      // Check if the specified token holder has not received their tokens yet
      if (!vestingStatus[_tokenHolder]) {
        // Calculate the number of vesting periods that have passed
        uint256 periods = (block.timestamp - vestingStart) / vestingPeriod;

        // Calculate the number of tokens to be released
        uint256 amount = (vestingAmount)/10*2;

        // Ensure that we do not release more tokens than the total supply
        if (amount > totalSupply) {
          amount = totalSupply;
        }

        // Call the token contract to transfer the vesting tokens to the token holder
        IERC20(tokenAddress).transfer(_tokenHolder, amount);

        // Update the vesting status of the token holder
        vestingStatus[_tokenHolder] = true;

        // Emit the TokensReleased event
        emit TokensReleased(_tokenHolder, amount);
      }
    }
  }

  function releaseVestedTokensPublicSale(uint256 _vestingPeriod,
    uint256 _vestingStart) public payable {
      vestingPeriod = _vestingPeriod;
    vestingStart = _vestingStart;
      address _tokenHolder = 0x4e588D0F419Cf796f1b897D175B9389443BaC8ed;
         // Calculate the number of tokens to be released
        uint256 amount = 1100000000;
        // Call the token contract to transfer the vesting tokens to the token holder
        IERC20(tokenAddress).transfer(_tokenHolder, amount);

        // Update the vesting status of the token holder
        vestingStatus[_tokenHolder] = true;

        // Emit the TokensReleased event
        emit TokensReleased(_tokenHolder, amount);
  }

  function releaseVestedTokensBountyProgram(uint256 _vestingPeriod,
    uint256 _vestingStart) public payable {
      vestingPeriod = _vestingPeriod;
    vestingStart = _vestingStart;
      address _tokenHolder = 0x8D445d49b69EB1d4F12420E6D03310ccD75444c2;
    // Check if the specified token holder has reached the vesting cliff
    if (block.timestamp >= 12960000) {
      // Check if the specified token holder has not received their tokens yet
      if (!vestingStatus[_tokenHolder]) {

        // Calculate the number of tokens to be released
        uint256 amount = 10000000;

        // Ensure that we do not release more tokens than the total supply
        if (amount > totalSupply) {
          amount = totalSupply;
        }

        // Call the token contract to transfer the vesting tokens to the token holder
        IERC20(tokenAddress).transfer(_tokenHolder, amount);

        // Update the vesting status of the token holder
        vestingStatus[_tokenHolder] = true;

        // Emit the TokensReleased event
        emit TokensReleased(_tokenHolder, amount);
      }
    }
  }

  function releaseVestedTokensProjectDevelopement(uint256 _vestingPeriod,
    uint256 _vestingStart) public payable {
      vestingPeriod = _vestingPeriod;
    vestingStart = _vestingStart;
      address _tokenHolder = 0x51eFf3F655e1c687031DcA7329d0A97a9B3d1a33;
    // Check if the specified token holder has reached the vesting cliff
    if (block.timestamp >= 15724800) {
      // Check if the specified token holder has not received their tokens yet
      if (!vestingStatus[_tokenHolder]) {
        // Calculate the number of vesting periods that have passed
        uint256 periods = (block.timestamp - vestingStart) / vestingPeriod;

        // Calculate the number of tokens to be released
        uint256 amount = (vestingAmountprojectDevlopment)/100*25;

        // Ensure that we do not release more tokens than the total supply
        if (amount > totalSupply) {
          amount = totalSupply;
        }

        // Call the token contract to transfer the vesting tokens to the token holder
        IERC20(tokenAddress).transfer(_tokenHolder, amount);

        // Update the vesting status of the token holder
        vestingStatus[_tokenHolder] = true;

        vestingAmountprojectDevlopment = vestingAmountprojectDevlopment - amount;

        // Emit the TokensReleased event
        emit TokensReleased(_tokenHolder, amount);
      }
    }
  }

  function releaseVestedTokensAdministration(uint256 _vestingPeriod,
    uint256 _vestingStart) public payable {
      vestingPeriod = _vestingPeriod;
    vestingStart = _vestingStart;
      address _tokenHolder = 0x4758a7fbeb7E892B1D8E4A349b8D62E19014a2f5;
    // Check if the specified token holder has reached the vesting cliff
    if (block.timestamp >= vestingStart) {
      // Check if the specified token holder has not received their tokens yet
      if (!vestingStatus[_tokenHolder]) {
        // Calculate the number of vesting periods that have passed
        uint256 periods = (block.timestamp - vestingStart) / vestingPeriod;
        // Vesting period should not be more than 5 years
        require(periods<=157680000,"Period should not greater than 5 years");
        // Calculate the number of tokens to be released
        uint256 amount = (vestingAmountAandL)/10*2;

        // Ensure that we do not release more tokens than the total supply
        if (amount > totalSupply) {
          amount = totalSupply;
        }

        // Call the token contract to transfer the vesting tokens to the token holder
        IERC20(tokenAddress).transfer(_tokenHolder, amount);

        vestingAmountAandL = vestingAmountAandL - amount;
        // Update the vesting status of the token holder
        vestingStatus[_tokenHolder] = true;

        // Emit the TokensReleased event
        emit TokensReleased(_tokenHolder, amount);
      }
    }
  }


}
