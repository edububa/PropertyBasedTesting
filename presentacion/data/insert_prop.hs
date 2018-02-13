import Test.QuickCheck
import Data.List
import Data.List.Ordered

-- Propiedad que comprueba que insertar deja
-- la lista ordenada
prop_Insert x (Ordered xs) =
  isSorted (insert x xs)
