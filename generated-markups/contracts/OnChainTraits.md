# OnChainTraits

## Overview

#### License: UNLICENSED

## 

```solidity
abstract contract OnChainTraits
```

Author: 0xstabby.eth

Inherit from this abstract to use on-chain metadata

Just setTraits, and return getMetadata from tokenURI in implementation
## State variables info

### traitTypeCount (0x89028bcb)

```solidity
uint256 traitTypeCount
```


### traitValueCount (0xa0789c39)

```solidity
uint256 traitValueCount
```


### seed (0x7d94792a)

```solidity
uint256 seed
```


### _name (0xd28d8852)

```solidity
string _name
```


### _symbol (0xb09f1266)

```solidity
string _symbol
```


### description (0x7284e416)

```solidity
string description
```


## Functions info

### getTraits (0xe1dc0761)

```solidity
function getTraits(
    uint256 id
) public view virtual returns (OnChainDataStructs.Trait[] memory)
```

Get traits for id

Can be overridden


Parameters:

| Name | Type    | Description         |
| :--- | :------ | :------------------ |
| id   | uint256 | To grab traits for  |


Return values:

| Name | Type                              | Description     |
| :--- | :-------------------------------- | :-------------- |
| [0]  | struct OnChainDataStructs.Trait[] | Array of Traits |

### getMetadata (0xa574cea4)

```solidity
function getMetadata(uint256 id) public view virtual returns (string memory)
```

Get metadata for id

Can be overridden


Parameters:

| Name | Type    | Description           |
| :--- | :------ | :-------------------- |
| id   | uint256 | To grab metadata for  |


Return values:

| Name | Type   | Description                       |
| :--- | :----- | :-------------------------------- |
| [0]  | string | String of base64 encoded metadata |

### getImage (0x2607aafa)

```solidity
function getImage(uint256 id) public view virtual returns (string memory)
```

Get image

Can be overridden


Parameters:

| Name | Type    | Description       |
| :--- | :------ | :---------------- |
| id   | uint256 | To get image for  |


Return values:

| Name | Type   | Description                  |
| :--- | :----- | :--------------------------- |
| [0]  | string | String of base64 encoded svg |
