fib :: Int->Integer
fib 0 = 0
fib 1 = 1
fin n = fib(n-1) + fib(n-2)

main :: IO ()
main = do
    putStrLn "Enter number"
    n<-readLn
    print [fib i | i <-[0..n-1]]