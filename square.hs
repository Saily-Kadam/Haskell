main :: IO ()
main = do
  putStrLn "Enter a number:"
  n <- readLn :: IO Int
  putStrLn $ "Square is " ++ show (n^2)