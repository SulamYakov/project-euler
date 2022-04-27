-- Project Euler : Problem 2
-- Many thanks to nayuki.io for the explanation on the fast doubling algorithm.
-- Source for equations used: https://www.nayuki.io/page/fast-fibonacci-algorithms

-- main do block; the 33rd Fibonacci term is the last below 4 million.
-- main = do
--     sum (filter even (map (fst . fastFibDoubler) [1..33]))

fastFibDoubler :: Integer -> (Integer, Integer)
fastFibDoubler 0 = (0, 1)
fastFibDoubler n
    | n `mod` 2 == 0 = (c, d) 
    |      otherwise = (d, c+d)
    where (a, b) = fastFibDoubler (n `div` 2)
          c = a*(2*b - a)
          d = b*b + a*a
