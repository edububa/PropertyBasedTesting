         reverse [x] = [x]
    reverse (xs++ys) = reverse ys ++ reverse xs
reverse (reverse xs) = xs
