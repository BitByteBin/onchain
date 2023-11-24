# Strings

## Overview

#### License: MIT

## 

```solidity
library Strings
```

String operations.
## Errors info

### StringsInsufficientHexLength

```solidity
error StringsInsufficientHexLength(uint256 value, uint256 length)
```

The `value` string doesn't fit in the specified `length`.
## Functions info

### toString

```solidity
function toString(uint256 value) internal pure returns (string memory)
```

Converts a `uint256` to its ASCII `string` decimal representation.
### toStringSigned

```solidity
function toStringSigned(int256 value) internal pure returns (string memory)
```

Converts a `int256` to its ASCII `string` decimal representation.
### toHexString

```solidity
function toHexString(uint256 value) internal pure returns (string memory)
```

Converts a `uint256` to its ASCII `string` hexadecimal representation.
### toHexString

```solidity
function toHexString(
    uint256 value,
    uint256 length
) internal pure returns (string memory)
```

Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
### toHexString

```solidity
function toHexString(address addr) internal pure returns (string memory)
```

Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal
representation.
### equal

```solidity
function equal(string memory a, string memory b) internal pure returns (bool)
```

Returns true if the two strings are equal.