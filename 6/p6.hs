-- Project Euler : Problem 6

-- main = do
--       sumSquareDiff 100

sumSquareDiff :: (Integral a) => a -> a
sumSquareDiff n = (sum [1..n])^2 - (sum $ map (^2) [1..n])
