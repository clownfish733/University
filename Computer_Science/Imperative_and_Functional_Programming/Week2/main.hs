
main = do
    putStrLn "Hello World"


-- section 3

-- 3.1
myNot True  = False
myNot False = True

myNot' x
    | x = False
    | not x = True

myNot'' x = case x of
    True  -> False
    False -> True


-- 3.2
myAnd True True = True
myAnd _ _       = False

myAnd' x y
    | x && y = True
    | otherwise = False

myAnd'' x y = case (x, y) of
    (True, True) -> True
    _            -> False

-- 3.3
calcTip c = if c <=10 then 0.1 * c else 0.15 * c

calcTip' c
    | c <= 10 = c * 0.1
    | otherwise = c * 0.15

calcTip'' c = case c <= 10 of
    True  -> c * 0.1
    False -> c * 0.15

-- 3.4

mysterious n = if mod n 2 == 1 then 3 * n + 1 else div n 2


mysterious' n
    | mod n 2 == 1 = 3 * n + 1
    | even n = div n 2

mysterious'' n = case mod n 2 of
    1 -> 3 * n + 1
    0 -> div n 2

-- 3.5
grade x
    | x < 40 = "Fail"
    | 40 <=x && x < 50 = "Third"
    | 50 <= x && x < 60 = "Two-Two"
    | 60 <= x && x < 70 = "Two-One"
    | x >= 70 = "First"


-- 3.6
clamped lb ub n
    | n < lb = lb
    | n >= lb && n <= ub = n
    | n > ub = ub

-- 3.7
evalOp op lhs rhs = case op of
    "add" -> lhs + rhs
    "sub" -> lhs - rhs
    "mul" -> lhs * rhs
    _     -> 0

-- 3.8 TODO:
{-
Foo
    | happiness > 10 = "Hello!"
    | otherwise = goodbye
    where
        happiness = 10
        goodbye = "Goodbye!"
-}

-- Section 4

-- 4.1
factorial 0 = 1
factorial n = factorial (n-1)

-- 4.2

fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

-- 4.3
-- (a)
divisor n m = mod n m == 0

-- (b)
anyDivisors n 1 = False
anyDivisors n m = mod n m == 0 || anyDivisors n (m -1)

-- (c)
prime n = not (anyDivisors n (n - 1))



collatz 1 = 0
collatz n = 1 + collatz ( mysterious  n)

fibs :: (Eq n, Num n, Num a) => n -> [a] -> [a]
fibs 0 xs       = reverse xs
fibs n []       = fibs (n-1) [1]
fibs n [x]      = fibs (n-1) (1 : [x])
fibs n (x:y:xs) = fibs (n-1) (x + y : (x: (y : xs)))

