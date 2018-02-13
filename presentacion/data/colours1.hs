data Colour = Red | Blue | Green deriving Show

instance Arbitrary Colour where
  arbitrary = frequency
    [ (1, return Red  ),
      (4, return Blue ),
      (2, return Green)]
