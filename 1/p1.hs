-- Project Euler : Problem 1

-- need to finish the main do block.
-- main = do 
-- sum $ ((multLister 3 1000)++(multLister 5 1000))\\(multLister 15 1000)

multLister :: (Integral a) => a -> a -> [a]
multLister m l
    | (l-1) `div` m == 1 = [m]
    |          otherwise = [((l-1) `div` m)*m] ++ multLister m (l-m)
    |              l < m = error "Improper input: multiplicand must be less than desired limit."
