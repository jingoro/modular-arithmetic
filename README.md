modular-arithmetic
==================

Some modular arithmetic helper methods useful for number theory or
cryptography.

## Examples

Require the library:

    require 'modular_arithmetic'
    include ModularArithmetic

Compute the greatest common denominator of 114 and 48:

    gcd(114, 48) #=> 6

Compute `a` and `b` such that `a*x + b*y = gcd(x, y)`:

    g, a, b = gcdext(3, 5)
    g #=> 1
    a #=> 2
    b #=> -1

Compute the inverse of 4 modulo 7:

    invert(4, 7) #=> 5

Compute 3 raised to 4 modulo 5:

    powmod(3, 4, 5) #=> 1
