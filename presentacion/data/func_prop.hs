(f === g) x = f x == g x

prop_CompAssoc :: (Int -> Int) -> (Int -> Int) ->
  (Int -> Int) -> Int -> Bool
prop_CompAssoc f g h = (f . (g . h)) === ((f . g) . h)

prop_CompCommut :: (Int -> Int) -> (Int -> Int) ->
  Int -> Bool
prop_CompCommut f g = (f . g) === (g . f)

-- Necesario para que en caso de error no se lance una
-- excepción, ya que las funciones no se pueden imprimir
instance Show (a -> b) where show _ = "<<function>>"
