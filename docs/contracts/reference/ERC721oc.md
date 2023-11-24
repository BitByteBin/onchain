# ERC721oc

## Overview

#### License: UNLICENSED

## 

```solidity
contract ERC721oc is OnChainTraits, Ownable, ERC721
```

Author: 0xstabby.eth

ERC721 OnChainTraits implementation
## Functions info

### constructor

```solidity
constructor(
    string memory name,
    string memory symbol,
    string memory description
)
    Ownable(msg.sender)
    ERC721(name, symbol)
    OnChainTraits(name, symbol, description)
```

Initialize metadata with collection values

Pass name/symbol data to base constructors

Parameters:

| Name        | Type   | Description               |
| :---------- | :----- | :------------------------ |
| name        | string | Name for metadata         |
| symbol      | string | Symbol for metadata       |
| description | string | Description for metadata  |

### tokenURI (0xc87b56dd)

```solidity
function tokenURI(uint256 id) public view override returns (string memory)
```

TokenURI returns base64URI metadata with a base64URI image


Parameters:

| Name | Type    | Description |
| :--- | :------ | :---------- |
| id   | uint256 | Of ERC721   |

### setTraits (0xbbd6e196)

```solidity
function setTraits(
    OnChainDataStructs.Trait[] memory traits
) public payable onlyOwner
```

Setup traits and values


Parameters:

| Name   | Type                              | Description              |
| :----- | :-------------------------------- | :----------------------- |
| traits | struct OnChainDataStructs.Trait[] | Array of traits to setup |

### reveal (0xc2ca0ac5)

```solidity
function reveal(uint256 _seed) public payable onlyOwner
```

Reveal function with seed


Parameters:

| Name  | Type    | Description                 |
| :---- | :------ | :-------------------------- |
| _seed | uint256 | To initialize metadata with |
