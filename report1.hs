-- import Distribution.ModuleName (main)
exp' :: Integer -> Integer -> Integer
-- exp x y = x^y
exp' a b
  | b == 0    = 1
  | otherwise = a * exp' a (b-1)

length' :: [Integer] -> Integer
length'[] = 0
length' (x:xs) = 1 + length' xs 

--doubleList [x,y,z,...] = [2x, 2y, 2z, ...]

map' :: (Integer -> Integer) -> [Integer] -> [Integer]
-- map f [x, y, ...] = [f x, f y, ...]
map' f [] = []
map' f (x:xs) = f x : map' f xs

-- productList [x,y,z,...] = x*y*z*...

-- foldl (+) 5 [1,2,3] = 5 + 1 + 2 + 3
foldl' :: (Integer -> Integer -> Integer) -> Integer -> [Integer] -> Integer
foldl' f i [] = i
foldl' f i (x:xs) = f (foldl' f i xs) x

foldr' :: (Integer -> Integer -> Integer) -> Integer -> [Integer] -> Integer
foldr' f i [] = i
foldr' f i (x : xs) = foldr' f (f i x) xs

flatten' :: [[Integer]] -> [Integer]
flatten' [] = []
flatten' (x:xs) = x ++ flatten' xs

mergeSort :: [Integer] -> [Integer]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge as bs
    where
        (as', bs') = split xs
        (as, bs) = (mergeSort as', mergeSort bs')
        merge :: [Integer] -> [Integer] -> [Integer]
        merge (x:xs) (y:ys)
            | x <= y = x : merge xs (y:ys)
            | otherwise = y : merge (x:xs) ys
        merge xs ys = xs ++ ys
        split :: [Integer] -> ([Integer], [Integer])
        split = splitAt =<< flip div 2 . (+1) . length

main = do
  print $ exp' 3 5
  print $ mergeSort [3,2,1]