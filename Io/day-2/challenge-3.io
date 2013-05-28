List deepSum := method(
	totalSum := nil;

	flatList := self flatten();

	flatList foreach( index, value,
		if( (value type() == "Number"), 

			totalSum = (
				value + if( totalSum, totalSum, 0 )
			);
		);
	);

	totalSum;
);


nestedList := list(
	list(1, 2, 3),
	list(10, 20, 30)
);

nestedList deepSum println;
