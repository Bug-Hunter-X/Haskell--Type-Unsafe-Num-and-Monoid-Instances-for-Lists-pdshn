{-# LANGUAGE FlexibleInstances #-}

instance Monoid a => Monoid [a] where
  mempty = []
  mappend = (++)

instance Num a => Num [a] where
  (+) = zipWith (+)
  (*) = zipWith (*)
  (-) = zipWith (-)
  abs = fmap abs
  signum = fmap signum
  fromInteger n = [fromInteger n]

main :: IO ()
main = do
  print $ [1, 2, 3] + [4, 5, 6]
  print $ [1, 2, 3] * [4, 5, 6]