-- Project Euler : Problem 4

-- the take statement in the main do block shows that 993*913 is the answer.
-- this obviously needs to be changed so as not to take up so many bytes of stack space.
-- main = do
--      take 10 . reverse $ map palFinder [100..999]  

intgrLength :: (Integral a) => [a] -> a
intgrLength [] = 0
intgrLength [x] = 1
intgrLength (_:xs) = 1 + intgrLength xs

-- function that splits a number into a list of its digits. This was found and then taken from:
-- https://stackoverflow.com/questions/3963269/split-a-number-into-its-digits-with-haskell
digs :: (Integral a) => a -> [a]
digs 0 = []
digs x = x `mod` 10 : digs (x `div` 10)

palProduct :: (Integral a) => a -> a -> Bool
palProduct m n 
    | (intgrLength (digs m) /= 3) || (intgrLength (digs n) /= 3) = error "Input error: both arguments must have 3 digits."
    | otherwise = (==) <*> reverse $ digs (m*n)

palFinder :: (Integral a) => a -> [a]
palFinder m = filter (palProduct m) [100..999]
