# IERC721Receiver

## Overview

#### License: MIT

## 

```solidity
interface IERC721Receiver
```

Interface for any contract that wants to support safeTransfers
from ERC721 asset contracts.
## Functions info

### onERC721Received (0x150b7a02)

```solidity
function onERC721Received(
    address operator,
    address from,
    uint256 tokenId,
    bytes calldata data
) external returns (bytes4)
```

Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
by `operator` from `from`, this function is called.

It must return its Solidity selector to confirm the token transfer.
If any other value is returned or the interface is not implemented by the recipient, the transfer will be
reverted.

The selector can be obtained in Solidity with `IERC721Receiver.onERC721Received.selector`.