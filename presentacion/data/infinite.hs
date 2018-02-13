-- Esta propiedad intenta comparar 2 listas infinitas
-- generadas por cycle por tanto no acaba
prop_DoubleCycle :: [Int] -> Property
prop_DoubleCycle xs =
  not (null xs) ==>
    cycle xs == cycle (xs ++ xs)

-- En cambio aquí suponemos que si los n primeros elementos
-- de las listas son iguales la propiedad es correcta
prop_DoubleCycle' :: [Int] -> Int -> Property
prop_DoubleCycle' xs n =
  not (null xs) && n >= 0 ==>
    take n (cycle xs) == take n (cycle (xs ++ xs))
