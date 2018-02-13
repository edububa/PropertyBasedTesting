data Colour = Red | Blue | Green deriving Show

instance Arbitrary Colour where
  arbitrary = oneof
    [return Red, return Blue, return Green]
