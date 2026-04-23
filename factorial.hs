main :: IO ()
main = do
    putStrLn "Enter a number"
    n <- readLn :: IO Int
    putStrLn $ "The factorial is: " ++ show (product[1..n])
        