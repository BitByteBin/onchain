# IERC721

## Overview

#### License: MIT

## 

```solidity
interface IERC721 is IERC165
```

Required interface of an ERC721 compliant contract.
## Events info

### Transfer

```solidity
event Transfer(address indexed from, address indexed to, uint256 indexed tokenId)
```

Emitted when `tokenId` token is transferred from `from` to `to`.
### Approval

```solidity
event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId)
```

Emitted when `owner` enables `approved` to manage the `tokenId` token.
### ApprovalForAll

```solidity
event ApprovalForAll(address indexed owner, address indexed operator, bool approved)
```

Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
## Functions info

### balanceOf (0x70a08231)

```solidity
function balanceOf(address owner) external view returns (uint256 balance)
```

Returns the number of tokens in ``owner``'s account.
### ownerOf (0x6352211e)

```solidity
function ownerOf(uint256 tokenId) external view returns (address owner)
```

Returns the owner of the `tokenId` token.

Requirements:

- `tokenId` must exist.
### safeTransferFrom (0xb88d4fde)

```solidity
function safeTransferFrom(
    address from,
    address to,
    uint256 tokenId,
    bytes calldata data
) external
```

Safely transfers `tokenId` token from `from` to `to`.

Requirements:

- `from` cannot be the zero address.
- `to` cannot be the zero address.
- `tokenId` token must exist and be owned by `from`.
- If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
- If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon
a safe transfer.

Emits a {Transfer} event.
### safeTransferFrom (0x42842e0e)

```solidity
function safeTransferFrom(address from, address to, uint256 tokenId) external
```

Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
are aware of the ERC721 protocol to prevent tokens from being forever locked.

Requirements:

- `from` cannot be the zero address.
- `to` cannot be the zero address.
- `tokenId` token must exist and be owned by `from`.
- If the caller is not `from`, it must have been allowed to move this token by either {approve} or
{setApprovalForAll}.
- If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon
a safe transfer.

Emits a {Transfer} event.
### transferFrom (0x23b872dd)

```solidity
function transferFrom(address from, address to, uint256 tokenId) external
```

Transfers `tokenId` token from `from` to `to`.

WARNING: Note that the caller is responsible to confirm that the recipient is capable of receiving ERC721
or else they may be permanently lost. Usage of {safeTransferFrom} prevents loss, though the caller must
understand this adds an external call which potentially creates a reentrancy vulnerability.

Requirements:

- `from` cannot be the zero address.
- `to` cannot be the zero address.
- `tokenId` token must be owned by `from`.
- If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.

Emits a {Transfer} event.
### approve (0x095ea7b3)

```solidity
function approve(address to, uint256 tokenId) external
```

Gives permission to `to` to transfer `tokenId` token to another account.
The approval is cleared when the token is transferred.

Only a single account can be approved at a time, so approving the zero address clears previous approvals.

Requirements:

- The caller must own the token or be an approved operator.
- `tokenId` must exist.

Emits an {Approval} event.
### setApprovalForAll (0xa22cb465)

```solidity
function setApprovalForAll(address operator, bool approved) external
```

Approve or remove `operator` as an operator for the caller.
Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.

Requirements:

- The `operator` cannot be the address zero.

Emits an {ApprovalForAll} event.
### getApproved (0x081812fc)

```solidity
function getApproved(uint256 tokenId) external view returns (address operator)
```

Returns the account approved for `tokenId` token.

Requirements:

- `tokenId` must exist.
### isApprovedForAll (0xe985e9c5)

```solidity
function isApprovedForAll(
    address owner,
    address operator
) external view returns (bool)
```

Returns if the `operator` is allowed to manage all of the assets of `owner`.

See {setApprovalForAll}