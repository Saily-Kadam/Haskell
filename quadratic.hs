main :: IO ()
main = do
    putStrLn "Enter the values of a, b,c"
    a <- readLn :: IO Double
    b <- readLn :: IO Double
    c <- readLn :: IO Double
    
    let disk = b^2 - 4*a*c
    
    if disk > 0
        then do 
            putStrLn $ "Root1: " ++ show ((-b + sqrt disk) /(2*a))
            putStrLn $ "Root2: " ++ show ((-b - sqrt disk) /(2*a))
        else if disk == 0
            then
                putStrLn $ "Repeated Roots: " ++ show (-b/(2*a))
            else do
                putStrLn $ "Complex Root 1: " ++ show (-b/(2*a)) ++ "+" ++ show (sqrt(abs disk) /(2*a))
                putStrLn $ "Complex Root 2:  "++ show (-b/(2*a)) ++ "-" ++ show (sqrt(abs disk) /(2*a))
