module CollatzConjecture
  ( collatz
  ) where

collatz :: Integer -> Maybe Integer
collatz n
  | n < 1 = Nothing
  | otherwise = Just steps
  where
    steps = doCollatz n 0
    doCollatz n' acc
      | n' == 1 = acc
      | even n' = doCollatz (n' `quot` 2) acc + 1
      | otherwise = doCollatz (n' * 3 + 1) acc + 1
