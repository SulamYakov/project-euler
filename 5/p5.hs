-- Project Euler : Problem 5

-- main = do
--      generalizedLCM [1..20]

generalizedLCM :: (Integral a) => [a] -> Maybe a
generalizedLCM [] = Nothing
generalizedLCM [x] = Just x
generalizedLCM [x, y] = Just (lcm x y)
generalizedLCM (x:xs) = fmap (lcm x) (generalizedLCM xs)
