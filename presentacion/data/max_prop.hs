-- La propiedad x <= y ==> max x y == y
prop_MaxLe :: Int -> Int -> Property
prop_MaxLe x y = x <= y ==> max x y == y

-- Propiedad que comprueba que insertar deja
-- la lista ordenada
prop_Insert :: Int -> [Int] -> Property
prop_Insert x xs =
  isSorted xs ==> isSorted (insert x xs)
