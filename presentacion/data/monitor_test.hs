prop_Insert :: Int -> [Int] -> Property
prop_Insert x xs =
  isSorted xs ==>
    classify (null xs) "trivial" $
      isSorted (insert x xs)

prop_Insert' :: Int -> [Int] -> Property
prop_Insert' x xs =
  isSorted xs ==>
    collect (length xs) $
      isSorted (insert x xs)
