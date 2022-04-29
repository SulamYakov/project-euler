-- Project Euler : Problem 3

-- imported package is installed through cabal under the name "primes"
import Data.Numbers.Primes

-- main = do
--     integerFactor 600851475143 []

-- factor an integer into a list of its prime factors.
-- the 10000 in the take call needs to be refined to a more logical value. For the time being, this is arbitrary and is not guaranteed to
-- work for all composite numbers. 

-- this function, even though it works to discover prime factors, is incomplete due to the erroneous condition of needing to start
-- with any list whatsoever. 

-- the output list needs to be sorted by the first elements, and then summed over the second elements so as to calculate the correct prime
-- powers. 
integerFactor :: (Integral a) => a -> [a] -> [(a, a)]
integerFactor n _ 
    |    n  < 0 = error "incorrect numerical input. Must be greater than or equal to 2."
    |    n == 1 = [(1, 0)]
    | otherwise = (p, 1):(integerFactor quot ps)
    where (p:ps) = filter (\x -> n `mod` x == 0) (take 10000 primes)
          quot = n `div` p
