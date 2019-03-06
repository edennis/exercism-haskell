module Pangram
  ( isPangram
  ) where

import           Data.Char
import qualified Data.Set  as Set

isPangram :: String -> Bool
isPangram text = alphabet == letters
  where
    alphabet = ['a' .. 'z']
    letters = Set.toList $ Set.fromList $ map toLower $ filter isLetter text
