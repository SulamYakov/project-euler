-- Project Euler : Problem 7

-- main = do
--      head . reverse $ primeTaker 10001

primeTaker :: (Integral a) => a -> a
primeTaker 0 = 1
primeTaker n = take n primes


