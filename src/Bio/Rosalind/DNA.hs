module Bio.Rosalind.DNA where

import Data.List (intercalate)

dna :: String -> String
dna s = unwords $ map show [foo 'A', foo 'C', foo 'G', foo 'T']
  where
    foo :: Char -> Int
    foo ch = length $ filter (== ch) s
