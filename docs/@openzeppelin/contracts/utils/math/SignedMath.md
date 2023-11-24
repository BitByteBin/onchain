# SignedMath

## Overview

#### License: MIT

## 

```solidity
library SignedMath
```

Standard signed math utilities missing in the Solidity language.
## Functions info

### max

```solidity
function max(int256 a, int256 b) internal pure returns (int256)
```

Returns the largest of two signed numbers.
### min

```solidity
function min(int256 a, int256 b) internal pure returns (int256)
```

Returns the smallest of two signed numbers.
### average

```solidity
function average(int256 a, int256 b) internal pure returns (int256)
```

Returns the average of two signed numbers without overflow.
The result is rounded towards zero.
### abs

```solidity
function abs(int256 n) internal pure returns (uint256)
```

Returns the absolute unsigned value of a signed value.