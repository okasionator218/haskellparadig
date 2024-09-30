def fibonacci_memo(n):
    
    fib_array = [0] * (n + 1)
    
    
    fib_array[0] = 0
    fib_array[1] = 1
    
    
    for i in range(2, n + 1):
        fib_array[i] = fib_array[i - 1] + fib_array[i - 2]
    
    return fib_array[n]


print(fibonacci_memo(10))  
