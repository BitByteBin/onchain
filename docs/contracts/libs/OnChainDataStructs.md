# OnChainDataStructs

## Overview

#### License: UNLICENSED

## 

```solidity
library OnChainDataStructs
```

Author: 0xstabby.eth

Shared structs for OnChainTraits
## Structs info

### Trait

```solidity
struct Trait {
	string key;
	string value;
}
```


### Metadata

```solidity
struct Metadata {
	string name;
	string description;
	OnChainDataStructs.Trait[] traits;
}
```

