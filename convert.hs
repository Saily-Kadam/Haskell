import Numeric (showHex)

main :: IO ()
main = do
putStrLn "Enter a number"
n<-readLn :: IO Int
putStrLn $ "Conversion:" ++ showHex n ""