# IERC721Metadata

## Overview

#### License: MIT

## 

```solidity
interface IERC721Metadata is IERC721
```

See https://eips.ethereum.org/EIPS/eip-721
## Functions info

### name (0x06fdde03)

```solidity
function name() external view returns (string memory)
```

Returns the token collection name.
### symbol (0x95d89b41)

```solidity
function symbol() external view returns (string memory)
```

Returns the token collection symbol.
### tokenURI (0xc87b56dd)

```solidity
function tokenURI(uint256 tokenId) external view returns (string memory)
```

Returns the Uniform Resource Identifier (URI) for `tokenId` token.