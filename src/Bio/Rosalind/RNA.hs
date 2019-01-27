module Bio.Rosalind.RNA where

import Data.Text as T

rna :: Text -> Text
rna = T.map (\c -> if c == 'T' then 'U' else c)

