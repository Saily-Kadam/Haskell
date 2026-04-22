main :: IO ()
main = do
  putStrLn "Enter first side of triangle:"
  a <- readLn :: IO Double
  putStrLn "Enter second side triangle:"
  b <- readLn :: IO Double
  putStrLn "Enter third side of triangle:"
  c <- readLn :: IO Double
  
  let s = (a + b + c) / 2  
      area  = sqrt (s * (s - a) * (s - b) * (s - c))
  putStrLn $ "Area is: " ++ show area