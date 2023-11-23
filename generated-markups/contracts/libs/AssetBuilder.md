# AssetBuilder

## Overview

#### License: UNLICENSED

## 

```solidity
library AssetBuilder
```

Author: 0xstabby.eth

Lib for building on-chain images
## Functions info

### buildSvg

```solidity
function buildSvg(
    OnChainDataStructs.Metadata memory metadata
) internal pure returns (string memory)
```

Build SVG for metadata


Parameters:

| Name     | Type                               | Description                |
| :------- | :--------------------------------- | :------------------------- |
| metadata | struct OnChainDataStructs.Metadata | Metadata to build svg for  |


Return values:

| Name | Type   | Description   |
| :--- | :----- | :------------ |
| [0]  | string | String of svg |
