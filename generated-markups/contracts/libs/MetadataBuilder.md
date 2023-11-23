# MetadataBuilder

## Overview

#### License: UNLICENSED

## 

```solidity
library MetadataBuilder
```

Author: 0xstabby.eth

Lib for building on-chain metadata
## Functions info

### buildMetadata

```solidity
function buildMetadata(
    uint256 id,
    string memory image,
    OnChainDataStructs.Metadata memory metadata
) internal pure returns (string memory)
```

Build metadata string for id with image and metadata


Parameters:

| Name     | Type                               | Description                   |
| :------- | :--------------------------------- | :---------------------------- |
| id       | uint256                            | To build metadata for         |
| image    | string                             | To insert in metadata string  |
| metadata | struct OnChainDataStructs.Metadata | To insert in metadata string  |


Return values:

| Name | Type   | Description        |
| :--- | :----- | :----------------- |
| [0]  | string | String of metadata |
