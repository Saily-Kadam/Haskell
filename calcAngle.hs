import Data.List(sort)

calcAngle :: Double -> Double -> Double -> Double
calcAngle a b c = acos ((b^2 - c^2 + a^2) / (2*b*c)) * 180 / pi 

main :: IO ()
main = do  
    putStrLn "Enter the sides of the triangle"
    a <- readLn :: IO Double
    b <- readLn :: IO Double
    c <- readLn :: IO Double
    
    if a+b > c && b+c > a && a+c > b 
        then do 
            putStrLn $ "Angle A : " ++ show (calcAngle a b c) ++ "degrees"
            putStrLn $ "Angle B : " ++ show (calcAngle b a c) ++ "degrees"
            putStrLn $ "Angle C : " ++ show (calcAngle c a b) ++ "degrees"
        else do
            putStrLn "Invalid Triangle"