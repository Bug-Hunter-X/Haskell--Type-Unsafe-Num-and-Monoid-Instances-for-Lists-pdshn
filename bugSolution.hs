{-# LANGUAGE FlexibleInstances #-}

import Data.Maybe (fromMaybe)

instance Monoid a => Monoid [a] where
  mempty = []
  mappend = (++)

instance (Num a, Eq a) => Num [a] where
  (+) xs ys = zipWith (+) (xs ++ repeat 0) (ys ++ repeat 0)
  (*) xs ys = zipWith (*) (xs ++ repeat 0) (ys ++ repeat 0) 
  (-) xs ys = zipWith (-) (xs ++ repeat 0) (ys ++ repeat 0)
  abs = fmap abs
  signum = fmap signum
  fromInteger n = [fromInteger n]

main :: IO ()
main = do
  print $ [1, 2, 3] + [4, 5, 6]
  print $ [1, 2, 3] * [4, 5, 6]
  print $ [1,2,3] + [4,5,6,7,8]
  print $ [1,2,3] - [4,5,6,7,8]