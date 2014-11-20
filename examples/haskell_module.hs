{- | This function takes a positive integer and returns the sum of all positive
     integers which are less than the input and divisible by either 3 or 5.
-}
tof :: Int -> Int
tof n = sum [x | x <- [1..n], x `rem` 3 == 0 || x `rem` 5 == 0]
