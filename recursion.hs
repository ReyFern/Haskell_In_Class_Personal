factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

mySum :: Num a => [a] -> a
mySum [] = 0
mySum (n:ns) = n + sum ns