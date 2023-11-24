# Math

## Overview

#### License: MIT

## 

```solidity
library Math
```

Standard math utilities missing in the Solidity language.
## Enums info

### Rounding

```solidity
enum Rounding {
	 Floor,
	 Ceil,
	 Trunc,
	 Expand
}
```


## Errors info

### MathOverflowedMulDiv

```solidity
error MathOverflowedMulDiv()
```

Muldiv operation overflow.
## Functions info

### tryAdd

```solidity
function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

Returns the addition of two unsigned integers, with an overflow flag.
### trySub

```solidity
function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

Returns the subtraction of two unsigned integers, with an overflow flag.
### tryMul

```solidity
function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

Returns the multiplication of two unsigned integers, with an overflow flag.
### tryDiv

```solidity
function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

Returns the division of two unsigned integers, with a division by zero flag.
### tryMod

```solidity
function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256)
```

Returns the remainder of dividing two unsigned integers, with a division by zero flag.
### max

```solidity
function max(uint256 a, uint256 b) internal pure returns (uint256)
```

Returns the largest of two numbers.
### min

```solidity
function min(uint256 a, uint256 b) internal pure returns (uint256)
```

Returns the smallest of two numbers.
### average

```solidity
function average(uint256 a, uint256 b) internal pure returns (uint256)
```

Returns the average of two numbers. The result is rounded towards
zero.
### ceilDiv

```solidity
function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256)
```

Returns the ceiling of the division of two numbers.

This differs from standard division with `/` in that it rounds towards infinity instead
of rounding towards zero.
### mulDiv

```solidity
function mulDiv(
    uint256 x,
    uint256 y,
    uint256 denominator
) internal pure returns (uint256 result)
```

Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
denominator == 0.

Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
Uniswap Labs also under MIT license.
### mulDiv

```solidity
function mulDiv(
    uint256 x,
    uint256 y,
    uint256 denominator,
    Math.Rounding rounding
) internal pure returns (uint256)
```

Calculates x * y / denominator with full precision, following the selected rounding direction.
### sqrt

```solidity
function sqrt(uint256 a) internal pure returns (uint256)
```

Returns the square root of a number. If the number is not a perfect square, the value is rounded
towards zero.

Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
### sqrt

```solidity
function sqrt(
    uint256 a,
    Math.Rounding rounding
) internal pure returns (uint256)
```

Calculates sqrt(a), following the selected rounding direction.
### log2

```solidity
function log2(uint256 value) internal pure returns (uint256)
```

Return the log in base 2 of a positive value rounded towards zero.
Returns 0 if given 0.
### log2

```solidity
function log2(
    uint256 value,
    Math.Rounding rounding
) internal pure returns (uint256)
```

Return the log in base 2, following the selected rounding direction, of a positive value.
Returns 0 if given 0.
### log10

```solidity
function log10(uint256 value) internal pure returns (uint256)
```

Return the log in base 10 of a positive value rounded towards zero.
Returns 0 if given 0.
### log10

```solidity
function log10(
    uint256 value,
    Math.Rounding rounding
) internal pure returns (uint256)
```

Return the log in base 10, following the selected rounding direction, of a positive value.
Returns 0 if given 0.
### log256

```solidity
function log256(uint256 value) internal pure returns (uint256)
```

Return the log in base 256 of a positive value rounded towards zero.
Returns 0 if given 0.

Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
### log256

```solidity
function log256(
    uint256 value,
    Math.Rounding rounding
) internal pure returns (uint256)
```

Return the log in base 256, following the selected rounding direction, of a positive value.
Returns 0 if given 0.
### unsignedRoundsUp

```solidity
function unsignedRoundsUp(Math.Rounding rounding) internal pure returns (bool)
```

Returns whether a provided rounding mode is considered rounding up for unsigned integers.