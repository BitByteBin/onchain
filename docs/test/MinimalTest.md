# MinimalTest

*0xstabby.eth*

> MinimalTest

Test for testing OnChainTraits without ERC721 overhead



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

### description

```solidity
function description() external view returns (string)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined |

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

### seed

```solidity
function seed() external view returns (uint256)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

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




