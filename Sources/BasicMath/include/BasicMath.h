#include "math.h"
#import <CoreFoundation/CoreFoundation.h>

#ifndef BasicMath_h
#define BasicMath_h

CF_ASSUME_NONNULL_BEGIN

typedef long Number;

/// Add a and b
/// @param a A
/// @param b B
Number add(Number a, Number b);

/// Subtract b from a
/// @param a A
/// @param b B
Number subtract(Number a, Number b);

/// Repeats x for n times in array returned as a.
/// @param x X
/// @param n N
/// @param a A
void repeatNumber(Number x, Number n, Number* a);

/// Repeats number x a random number of times.
/// @param x X
/// @param a A
///
/// Returns length of the output.
Number randomRepeatNumber(Number x, Number* a);

/// Adds all number in array a of n elements.
/// @param a A
/// @param n N
Number addNumbers(const Number* a, Number n);

CF_ASSUME_NONNULL_END

#endif /* BasicMath_h */
