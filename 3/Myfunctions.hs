module Myfunctions
    where

modd :: Integer -> Integer
modd x = 
    let m = x 
    in  (mod) m 4
    -- in  m `mod` 4
    -- in  (mod) m 4
    --in mod m 4

myfunc :: Int -> Int
myfunc x = 
    case x of
        0 -> 1
        1 -> 5
        2 -> 2
        _ -> -1

myfunc2 :: Int -> Int
myfunc2 x | x < 0 = error "argument is not positive"
    | x == 1 = 5
    | otherwise  = 9

myfunc3 :: Int -> Int
myfunc3 x | x < 0 = error "argument is not positive"
    | x == 1 = 9
    | otherwise  = 19

describeString :: String -> String
describeString str =
    case str of
        (x:xs) -> "The first character of the string is : " ++ [x] ++ "; and " ++ 
                    "there are " ++ show(length xs) ++ " more characters is it."
        []     -> "This is an empty string."
