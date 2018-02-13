import Test.QuickCheck
import Control.Monad (liftM2)

newtype List a = List [a]

instance Arbitrary a => Arbitrary (List a) where
  arbitrary = oneof
    [return, liftM2 (:) arbitrary arbitrary]
