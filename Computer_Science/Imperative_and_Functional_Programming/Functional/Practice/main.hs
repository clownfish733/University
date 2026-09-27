

main = do
    putStrLn "Hello World"


myLast [x]    = x
myLast []     = error "Invalid on empty list"
myLast (x:xs) = myLast xs



