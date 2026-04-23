main :: IO ()
main = do
    putStrLn "Enter a number: "
    n <- readLn :: IO Int
    let prime = n > 1 && null [x|x <- [2..n-1], n `mod` x == 0]
    putStrLn $ if prime then "Prime" else "Not Prime"
        
        