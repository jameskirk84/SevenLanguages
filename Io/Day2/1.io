# fibonacci series 1, 1, 2, 3, 5, 8, 13



#recursive solution
fibRecur := method(num,
	if(num < 3, 1, fibRecur(num-1)+fibRecur(num-2))
)

#iterative solution (for,while etc)
fibLoop := method(num,

	if(num == 0, 0, ( 
		prev1 := 1
		prev2 := 0
		temp := 0
		for(i, 2, num,
			temp = prev1+prev2	
			prev2 = prev1
			prev1 = temp
			)
		prev1
		)
	)
)


testPassed := method(" +passed" println)
testFailed := method("   -failed" println)


"Recursive solution tests:" println
"fib(1) == 1" print
if(fibRecur(1) == 1, testPassed, testFailed)
"fib(2) == 1" print
if(fibRecur(2) == 1, testPassed, testFailed)
"fib(3) == 2" print
if(fibRecur(3) == 2, testPassed, testFailed)
"fib(4) == 3" print
if(fibRecur(4) == 3, testPassed, testFailed)

"" println
"Iterative solution tests:" println
"fib(1) == 1" print
if(fibLoop(1) == 1, testPassed, testFailed)
"fib(2) == 1" print
if(fibLoop(2) == 1, testPassed, testFailed)
"fib(3) == 2" print
if(fibLoop(3) == 2, testPassed, testFailed)
"fib(4) == 3" print
if(fibLoop(4) == 3, testPassed, testFailed)

