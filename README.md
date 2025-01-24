# Haskell: Type-Unsafe Num and Monoid Instances for Lists

This repository demonstrates a subtle bug in Haskell related to the definition of Num and Monoid instances for lists.  The code compiles but has a runtime issue because of the lack of robust type checking for lengths of lists in the (+), (*), and (-) operations.

## Bug Description

The provided `bug.hs` file contains instances for Num and Monoid for lists.  While these seem to work for lists of the same length,  applying these instances to lists of different lengths results in a runtime error because the zipWith function will stop early.

## Solution

The `bugSolution.hs` file presents a solution that improves type safety by providing alternative implementations or using more suitable Haskell types for this task. It addresses the runtime issue related to lists of differing lengths by handling such cases explicitly or using types designed for safe operations on lists of different lengths. 

## How to run

1. Save the code in `bug.hs` and run it using a Haskell compiler (like GHC): `ghc bug.hs && ./bug`.
2. Observe the runtime error.
3. Run the solution: `ghc bugSolution.hs && ./bugSolution`. 

This example highlights the need for caution when creating custom instances, especially with potentially unsafe functions like zipWith when dealing with lists of arbitrary lengths.