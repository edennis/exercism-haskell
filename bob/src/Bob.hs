{-# LANGUAGE OverloadedStrings #-}

module Bob
  ( responseFor
  ) where

import           Data.Char
import           Data.Text (Text)
import qualified Data.Text as T

responseFor :: Text -> Text
responseFor xs
  | isShouting && isQuestion = "Calm down, I know what I'm doing!"
  | isQuestion = "Sure."
  | isShouting = "Whoa, chill out!"
  | isSilence = "Fine. Be that way!"
  | otherwise = "Whatever."
  where
    trimmed = T.strip xs
    letters = T.filter isLetter trimmed
    isSilence = T.all isSpace trimmed
    isShouting = (not . T.null) letters && T.all isUpper letters
    isQuestion = T.isSuffixOf "?" trimmed
