main :: IO ()
main = do
    putStrLn "Enter a number"
    n <- readLn :: IO Int 
    let factors = [x | x <-[1..n], n `mod` x == 0]
    putStrLn $ "Factors are: " ++ show factors
        