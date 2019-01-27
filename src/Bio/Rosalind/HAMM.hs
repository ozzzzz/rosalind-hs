module Bio.Rosalind.HAMM where

hamming :: String -> String -> Int
hamming x y = foldl func 0  $ zipWith (==) x y
  where
    func :: Int -> Bool -> Int
    func x False = x + 1
    func x True  = x
