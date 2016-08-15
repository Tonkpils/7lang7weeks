// Fibonacci sequence using recursion

recursiveFib := method(index, 
	if(index == 1 or index == 2, 
		1,
		recursiveFib(index - 1) + recursiveFib(index - 2)
	);
);

"Recursive Fib(4) and Fib(15)" println;
recursiveFib(4) println; // Fib = 3
recursiveFib(15) println; // Fib = 610
"End..." println;


loopingFib := method(index,
	if( (index == 1) or (index == 2), return ( 1 ));

	index2 := 1;
	index1 := 1;

	index0 := (index1 + index2);

	for(i , 3, index, 1,
		index0 = (index1 + index2);

		index2 = index1;
		index1 = index0;
	);
	return( index0 );
);

"Looping Fib(4) and Fib(15)" println;
loopingFib(4) println; // 3
loopingFib(15) println; // 610
"End..." println;
