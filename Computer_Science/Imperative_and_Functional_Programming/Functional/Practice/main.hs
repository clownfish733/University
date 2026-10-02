
main = do
    putStrLn "potato"



egGuardSugar x
    | x < 0 = "negative"
    | x <= 9 = "single digit"
    | otherwise = "multi-digit"

letEg x =
    let xCubed = x * x * x
        result = xCubed + xSquared
        xSquared = x * x
    in result

whereEg x = result
    where
        xCubed = x * x * x
        result = xCubed + xSquared
        xSquared = x * x


triangleNums 1 = 1
triangleNums n = n + triangleNums (n-1)


pad 1 = 1
pad 2 = 1
pad 3 = 1
pad n = pad (n-2) + pad (n-3)


lucas x = case x of
    1 -> 2
    2 -> 1
    n -> lucas (n - 1) + lucas (n - 2)


per x = case x of
    1 -> 3
    2 -> 0
    3 -> 2
    x -> per (x - 2) + per (x -3)

