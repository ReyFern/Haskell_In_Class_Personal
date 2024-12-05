withoutMultiplesOf :: [Int] -> Int -> [Int]
withoutMultiplesOf [] _ = []
withoutMultiplesOf (v:li) m | (v `mod` m) == 0 = li `withoutMultiplesOf` m
                            | otherwise = v : li `withoutMultiplesOf` m

sieveOfEratosthenes :: [Int] -> [Int]
sieveOfEratosthenes [] = []
sieveOfEratosthenes (v:li) | v == 1 = v : sieveOfEratosthenes li
                           | otherwise = v : sieveOfEratosthenes (li `withoutMultiplesOf` v)

primesUpTo :: Int -> [Int]
primesUpTo n = sieveOfEratosthenes [2..n]

main :: IO ()
main = print (primesUpTo 20)