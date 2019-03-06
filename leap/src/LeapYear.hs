module LeapYear
  ( isLeapYear
  ) where

isLeapYear :: Integer -> Bool
isLeapYear year =
  case map (rem year) [4, 100, 400] of
    [0, 0, 0] -> True
    [0, 0, _] -> False
    [0, _, _] -> True
    [_, _, _] -> False
