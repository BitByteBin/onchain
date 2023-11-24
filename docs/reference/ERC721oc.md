# ERC721oc

*0xstabby.eth*

> ERC721oc

ERC721 OnChainTraits implementation



## Methods

### _name

```solidity
function _name() external view returns (string)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined |

### _symbol

```solidity
function _symbol() external view returns (string)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined |

### approve

```solidity
function approve(address to, uint256 tokenId) external nonpayable
```



*See {IERC721-approve}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| to | address | undefined |
| tokenId | uint256 | undefined |

### balanceOf

```solidity
function balanceOf(address owner) external view returns (uint256)
```



*See {IERC721-balanceOf}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| owner | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### description

```solidity
function description() external view returns (string)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined |

### getApproved

```solidity
function getApproved(uint256 tokenId) external view returns (address)
```



*See {IERC721-getApproved}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| tokenId | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### getImage

```solidity
function getImage(uint256 id) external view returns (string)
```

Get image

*Can be overridden*

#### Parameters

| Name | Type | Description |
|---|---|---|
| id | uint256 | To get image for |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | String of base64 encoded svg |

### getMetadata

```solidity
function getMetadata(uint256 id) external view returns (string)
```

Get metadata for id

*Can be overridden*

#### Parameters

| Name | Type | Description |
|---|---|---|
| id | uint256 | To grab metadata for |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | String of base64 encoded metadata |

### getTraits

```solidity
function getTraits(uint256 id) external view returns (struct OnChainDataStructs.Trait[])
```

Get traits for id

*Can be overridden*

#### Parameters

| Name | Type | Description |
|---|---|---|
| id | uint256 | To grab traits for |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | OnChainDataStructs.Trait[] | Array of Traits |

### isApprovedForAll

```solidity
function isApprovedForAll(address owner, address operator) external view returns (bool)
```



*See {IERC721-isApprovedForAll}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| owner | address | undefined |
| operator | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined |

### name

```solidity
function name() external view returns (string)
```



*See {IERC721Metadata-name}.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined |

### owner

```solidity
function owner() external view returns (address)
```



*Returns the address of the current owner.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### ownerOf

```solidity
function ownerOf(uint256 tokenId) external view returns (address)
```



*See {IERC721-ownerOf}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| tokenId | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### renounceOwnership

```solidity
function renounceOwnership() external nonpayable
```



*Leaves the contract without owner. It will not be possible to call `onlyOwner` functions. Can only be called by the current owner. NOTE: Renouncing ownership will leave the contract without an owner, thereby disabling any functionality that is only available to the owner.*


### reveal

```solidity
function reveal(uint256 _seed) external payable
```

Reveal function with seed



#### Parameters

| Name | Type | Description |
|---|---|---|
| _seed | uint256 | To initialize metadata with |

### safeTransferFrom

```solidity
function safeTransferFrom(address from, address to, uint256 tokenId) external nonpayable
```



*See {IERC721-safeTransferFrom}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| from | address | undefined |
| to | address | undefined |
| tokenId | uint256 | undefined |

### safeTransferFrom

```solidity
function safeTransferFrom(address from, address to, uint256 tokenId, bytes data) external nonpayable
```



*See {IERC721-safeTransferFrom}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| from | address | undefined |
| to | address | undefined |
| tokenId | uint256 | undefined |
| data | bytes | undefined |

### seed

```solidity
function seed() external view returns (uint256)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### setApprovalForAll

```solidity
function setApprovalForAll(address operator, bool approved) external nonpayable
```



*See {IERC721-setApprovalForAll}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| operator | address | undefined |
| approved | bool | undefined |

### setTraits

```solidity
function setTraits(OnChainDataStructs.Trait[] traits) external payable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| traits | OnChainDataStructs.Trait[] | undefined |

### supportsInterface

```solidity
function supportsInterface(bytes4 interfaceId) external view returns (bool)
```



*See {IERC165-supportsInterface}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| interfaceId | bytes4 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined |

### symbol

```solidity
function symbol() external view returns (string)
```



*See {IERC721Metadata-symbol}.*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined |

### tokenURI

```solidity
function tokenURI(uint256 id) external view returns (string)
```

TokenURI returns base64URI metadata with a base64URI image



#### Parameters

| Name | Type | Description |
|---|---|---|
| id | uint256 | Of ERC721 |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined |

### traitTypeCount

```solidity
function traitTypeCount() external view returns (uint256)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### traitValueCount

```solidity
function traitValueCount() external view returns (uint256)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### transferFrom

```solidity
function transferFrom(address from, address to, uint256 tokenId) external nonpayable
```



*See {IERC721-transferFrom}.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| from | address | undefined |
| to | address | undefined |
| tokenId | uint256 | undefined |

### transferOwnership

```solidity
function transferOwnership(address newOwner) external nonpayable
```



*Transfers ownership of the contract to a new account (`newOwner`). Can only be called by the current owner.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| newOwner | address | undefined |



## Events

### Approval

```solidity
event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId)
```



*Emitted when `owner` enables `approved` to manage the `tokenId` token.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| owner `indexed` | address | undefined |
| approved `indexed` | address | undefined |
| tokenId `indexed` | uint256 | undefined |

### ApprovalForAll

```solidity
event ApprovalForAll(address indexed owner, address indexed operator, bool approved)
```



*Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| owner `indexed` | address | undefined |
| operator `indexed` | address | undefined |
| approved  | bool | undefined |

### OwnershipTransferred

```solidity
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| previousOwner `indexed` | address | undefined |
| newOwner `indexed` | address | undefined |

### Transfer

```solidity
event Transfer(address indexed from, address indexed to, uint256 indexed tokenId)
```



*Emitted when `tokenId` token is transferred from `from` to `to`.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| from `indexed` | address | undefined |
| to `indexed` | address | undefined |
| tokenId `indexed` | uint256 | undefined |



## Errors

### ERC721IncorrectOwner

```solidity
error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner)
```



*Indicates an error related to the ownership over a particular token. Used in transfers.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| sender | address | Address whose tokens are being transferred. |
| tokenId | uint256 | Identifier number of a token. |
| owner | address | Address of the current owner of a token. |

### ERC721InsufficientApproval

```solidity
error ERC721InsufficientApproval(address operator, uint256 tokenId)
```



*Indicates a failure with the `operator`’s approval. Used in transfers.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| operator | address | Address that may be allowed to operate on tokens without being their owner. |
| tokenId | uint256 | Identifier number of a token. |

### ERC721InvalidApprover

```solidity
error ERC721InvalidApprover(address approver)
```



*Indicates a failure with the `approver` of a token to be approved. Used in approvals.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| approver | address | Address initiating an approval operation. |

### ERC721InvalidOperator

```solidity
error ERC721InvalidOperator(address operator)
```



*Indicates a failure with the `operator` to be approved. Used in approvals.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| operator | address | Address that may be allowed to operate on tokens without being their owner. |

### ERC721InvalidOwner

```solidity
error ERC721InvalidOwner(address owner)
```



*Indicates that an address can&#39;t be an owner. For example, `address(0)` is a forbidden owner in EIP-20. Used in balance queries.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| owner | address | Address of the current owner of a token. |

### ERC721InvalidReceiver

```solidity
error ERC721InvalidReceiver(address receiver)
```



*Indicates a failure with the token `receiver`. Used in transfers.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| receiver | address | Address to which tokens are being transferred. |

### ERC721InvalidSender

```solidity
error ERC721InvalidSender(address sender)
```



*Indicates a failure with the token `sender`. Used in transfers.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| sender | address | Address whose tokens are being transferred. |

### ERC721NonexistentToken

```solidity
error ERC721NonexistentToken(uint256 tokenId)
```



*Indicates a `tokenId` whose `owner` is the zero address.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| tokenId | uint256 | Identifier number of a token. |

### OwnableInvalidOwner

```solidity
error OwnableInvalidOwner(address owner)
```



*The owner is not a valid owner account. (eg. `address(0)`)*

#### Parameters

| Name | Type | Description |
|---|---|---|
| owner | address | undefined |

### OwnableUnauthorizedAccount

```solidity
error OwnableUnauthorizedAccount(address account)
```



*The caller account is not authorized to perform an operation.*

#### Parameters

| Name | Type | Description |
|---|---|---|
| account | address | undefined |


