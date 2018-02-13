prop_Insert :: Int -> OrderedList Int -> Property
prop_Insert x xs =
    classify (null ys) "trivial" $
      isSorted (insert x ys)
  where ys = getOrdered xs

prop_Insert' :: Int -> OrderedList Int -> Property
prop_Insert' x xs =
    collect (length ys) $
      isSorted (insert x ys)
  where ys = getOrdered xs
