{-# LANGUAGE OverloadedStrings #-}

import Data.Text (Text, dropEnd, isSuffixOf)

import qualified Data.Text
import qualified Data.Text.IO

deleteLastChar :: Text -> Text
deleteLastChar "" = error "Empty String!"
deleteLastChar n = dropEnd 1 n

deleteTrailingSpaces :: Text -> Text
deleteTrailingSpaces line =
  if " " `isSuffixOf` line then
    deleteTrailingSpaces (deleteLastChar line)
  else
    line

adjustText :: Text -> Text
adjustText oldText = newText
  where
    oldLines = Data.Text.lines oldText
    newLines = map deleteTrailingSpaces oldLines
    newText = Data.Text.unlines newLines


main :: IO ()
main = Data.Text.IO.interact adjustText
