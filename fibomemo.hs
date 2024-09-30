import Data.Array

-- Função Fibonacci com Memoization
fibonacciMemo :: Int -> Int
fibonacciMemo n = fibArray ! n
  where
    fibArray = array (0, n) [(i, fib i) | i <- [0..n]]
    fib 0 = 0
    fib 1 = 1
    fib i = fibArray ! (i - 1) + fibArray ! (i - 2)

-- Testando a função
main = do
    let n = 10
    print ("Resultado para Fibonacci " ++ show n ++ ":", fibonacciMemo n)
