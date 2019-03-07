import Numeric (showIntAtBase)
import System.Environment

intToDigit :: Int -> Char
intToDigit x = 
    case x of 
        0 -> '0'
        1 -> '1'
        2 -> '2'
        3 -> '3'
        4 -> '4'
        5 -> '5'
        6 -> '6'
        7 -> '7'
        8 -> '8'
        9 -> '9'
        10 -> 'a'
        11 -> 'b'
        12 -> 'c'
        13 -> 'd'
        14 -> 'e'
        15 -> 'f'
        16 -> 'g'
        17 -> 'h'
        18 -> 'i'
        19 -> 'j'
        20 -> 'k'
        21 -> 'l'
        22 -> 'm'
        23 -> 'n'
        24 -> 'o'
        25 -> 'p'
        26 -> 'q'
        27 -> 'r'
        28 -> 's'
        29 -> 't'
        30 -> 'u'
        31 -> 'v'
        32 -> 'w'
        33 -> 'x'
        34 -> 'y'
        35 -> 'z'
        _ -> '_'

convert :: Integer -> Integer -> String
convert base number = do
    showIntAtBase base intToDigit number ""

main :: IO ()
main = do
    x <- getArgs
    if length(x) == 2 then do
        let base = read (x!!0) :: Integer
        let number = read (x!!1) :: Integer
        if base > 1 then
            if number < 0 then
                putStrLn "Error: negative number"        
            else
                putStrLn (convert base number)
        else
            putStrLn "Error: wrong base"        
    else
        putStrLn "Usage: ./main base number"        
