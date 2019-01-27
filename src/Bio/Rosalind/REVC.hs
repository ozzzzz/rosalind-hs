module Bio.Rosalind.REVC where

revc :: String -> String
revc = fmap complementDNA . reverse

complementDNA :: Char -> Char
complementDNA 'A' = 'T'
complementDNA 'C' = 'G'
complementDNA 'G' = 'C'
complementDNA 'T' = 'A'
