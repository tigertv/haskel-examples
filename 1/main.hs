main :: IO ()
--module Main where
k=13

factorial :: (Integral a) => a -> a
factorial n = if n < 2
	then 1
	else n * factorial (n - 1)

factorial2 = product . enumFromTo 1

factorial3 :: Integer -> Integer
factorial3 0 = 1
factorial3 n = n * factorial (n-1)

data Sex = Male | Female
data Person = Person String String Int deriving (Show)-- Notice that Person is both a constructor and a type

data Color = Red | Green | Blue

colorEq :: Color -> Color -> Bool
colorEq Red Red = True
colorEq Green Green = True
colorEq Blue Blue = True
colorEq _ _ = False
-- An example of creating something of type Person


tom :: Person
-- tom = Person "Tom" Male 27
tom = Person "Tom" "Male" 27

-- instance Show (a -> b) where
-- 	show a= "function"
 
hanoi :: a -> a -> a -> Int -> [(a, a)]
hanoi source using dest n
	| n == 1 = [(source, dest)]
	| otherwise = hanoi source dest using (n-1)
		++ hanoi source using dest 1
			++ hanoi using source dest (n-1)

hanoi_shower :: Show a => [(a, a)] -> String
hanoi_shower [(a, b)] = "Move " ++ show a ++ " to " ++ show b ++ "."

main = do
	let xyz = [1..12]
	putStrLn(show(k)++"^2="++show(quadrat(k))++" factorial 5="++show(factorial(5))++" factorial2="++show(factorial2(4)))
	putStrLn(show(tom))
	-- putStrLn(show(hanoi(1)))
	-- putStrLn "dasdf"
	-- name <- getLine
	-- putStrLn("Hello " ++ name)
	--colorEq(Red,Red)

quadrat x=x*x -- comment
{-
multiline comment
-}

phoneBook :: [(String,String)]
phoneBook =    
	[("betty","555-2938")   
	,("bonnie","452-2928")   
	,("patsy","493-2928")   
	,("lucille","205-2928")   
	,("wendy","939-8282")   
	,("penny","853-2492")   
	]

heron a b c = sqrt (s * (s - a) * (s - b) * (s - c))
	where
	s = (a + b + c) / 2

add a b = a + b
ten1 = 5 + 5
ten2 = (+) 5 5
ten3 = add 5 5
ten4 = 5 `add` 5

-- This type signature says that empty takes a list containing any type, and returns a Bool
empty :: [a] -> Bool
empty (x:xs) = False
empty [] = True

-- Will return a value from a Maybe a, given a default value in case a Nothing is encountered
fromMaybe :: a -> Maybe a -> a
fromMaybe x (Just y) = y
fromMaybe x Nothing  = x

isRight :: Either a b -> Bool
isRight (Right _) = True
isRight (Left _)  = False

getName :: Person -> String
getName (Person name _ _) = name

getAge :: Person -> Int
getAge (Person _ _ age) = age

data Month = January | February | March | April | May | June | July
	| August | September | October | November | December

-- not compiled
-- data Colour = Black | Red | Green | Blue | Cyan
-- 	| Yellow | Magenta | White | RGB Int Int Int
