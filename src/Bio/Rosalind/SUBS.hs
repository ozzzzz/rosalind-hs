module Bio.Rosalind.SUBS where

import Data.ByteString as BS

substrings :: ByteString -> ByteString -> [Int]
substrings initial substring = indices
  where
    starts = BS.elemIndices (BS.head substring) initial

    tails = fmap (`BS.drop` initial) starts

    indices = fmap fst $ Prelude.filter (\(_, t) -> substring `BS.isPrefixOf` t) $ Prelude.zip starts tails

substringsRosalind :: ByteString -> ByteString -> String
substringsRosalind x y = unwords . fmap (show . (+) 1) $ substrings x y
