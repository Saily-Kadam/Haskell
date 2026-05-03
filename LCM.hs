myGCD :: Int -> Int -> Int
myGCD a 0 = a 
myGCD a b = myGCD b (a `mod` b )

myLCM :: Int -> Int -> Int
myLCM a b = (abs a) * (abs b) `div` myGCD a b

main :: IO ()
main = do
    putStrLn "Enter first number"
    input1 <- getLine
    putStrLn "Enter second number"
    input2 <- getLine
    
    let a = read input1 :: Int
        b = read input2 :: Int
        result = myLCM a b 
    
    putStrLn $ "LCM is " ++ show result    