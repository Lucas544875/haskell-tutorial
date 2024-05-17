exp :: Integer -> Integer -> Integer
-- exp x y = x^y
exp = undefined

length :: [Integer] -> Integer
length = undefined

--doubleList [x,y,z,...] = [2x, 2y, 2z, ...]

map :: (Integer -> Integer) -> [Integer] -> [Integer]
-- map f [x, y, ...] = [f x, f y, ...]
map = undefined

--productList [x,y,z,...] = x*y*z*...

foldl :: (Integer -> Integer -> Integer) -> Integer -> [Integer] -> Integer
-- foldl f i [x,y,z] = f (f (f i x) y) z
-- sumList, productList の一般化
foldl = undefined

flatten :: [[Integer]] -> [Integer]
-- flatten [[2,3], [3,4], [1,2,3,4]] = [2,3,3,4,1,2,3,4]
flatten = undefined

mergeSort :: [Integer] -> [Integer]
mergeSort = undefined