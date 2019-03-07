-- import System.IO
-- import Myfunctions (myfunc3, myfunc2, myfunc, modd)
import Myfunctions

yourname :: String
yourname = "John"

puts :: String -> IO ()
puts = putStrLn


type SSS = Integer

myS :: SSS
myS = 55

data Disk = Floppy | HardDisk

diskType :: Disk
diskType = Floppy
--diskType = HardDisk

isFloppyDisk :: Disk -> Bool
isFloppyDisk x = 
    case x of
        Floppy -> True
        _ -> False

appa :: IO ()
appa = do
    puts ("mod=" ++ show(modd(15)))
    puts ("myfunc=" ++ show(myfunc(1)))
    puts ("myfunc2=" ++ show(myfunc2(3)))
    puts ("myfunc3=" ++ show(myfunc3(1)))
    puts "Input a string:"
    s <- getLine 
    puts ("describeString=" ++ describeString(s))
    --puts ("describeString=" ++ describeString("The test string contains many characters."))
    puts ("isFloppyDisk=" ++ show(isFloppyDisk(diskType)))
	--diskType = HardDisk
    puts ("isFloppyDisk=" ++ show(isFloppyDisk(diskType)))
	--myS = 52

main :: IO ()
main = do
    puts "Hello," >> putStrLn " World!"
    puts ("Hello, " ++ yourname ++ "!")
    appa
    {-
    puts ("Hello, " ++ sst ++ "!")
    -}

{-
class C a where {
    op :: D b => a -> b -> b
}

class C a => D a where { 
    --puts "DIV" 
}


class Foo a where
    f :: Integer -> Integer
instance Foo [b] where
    f x = 5 + x
-}

