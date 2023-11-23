# Ownable

## Overview

#### License: MIT

## 

```solidity
abstract contract Ownable is Context
```

Contract module which provides a basic access control mechanism, where
there is an account (an owner) that can be granted exclusive access to
specific functions.

The initial owner is set to the address provided by the deployer. This can
later be changed with {transferOwnership}.

This module is used through inheritance. It will make available the modifier
`onlyOwner`, which can be applied to your functions to restrict their use to
the owner.
## Events info

### OwnershipTransferred

```solidity
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
```


## Errors info

### OwnableUnauthorizedAccount

```solidity
error OwnableUnauthorizedAccount(address account)
```

The caller account is not authorized to perform an operation.
### OwnableInvalidOwner

```solidity
error OwnableInvalidOwner(address owner)
```

The owner is not a valid owner account. (eg. `address(0)`)
## Modifiers info

### onlyOwner

```solidity
modifier onlyOwner()
```

Throws if called by any account other than the owner.
## Functions info

### owner (0x8da5cb5b)

```solidity
function owner() public view virtual returns (address)
```

Returns the address of the current owner.
### renounceOwnership (0x715018a6)

```solidity
function renounceOwnership() public virtual onlyOwner
```

Leaves the contract without owner. It will not be possible to call
`onlyOwner` functions. Can only be called by the current owner.

NOTE: Renouncing ownership will leave the contract without an owner,
thereby disabling any functionality that is only available to the owner.
### transferOwnership (0xf2fde38b)

```solidity
function transferOwnership(address newOwner) public virtual onlyOwner
```

Transfers ownership of the contract to a new account (`newOwner`).
Can only be called by the current owner.