Number setSlot(
	"originalDivision",
	Number getSlot( "/" )
);

Number setSlot(
	"/",
	method( denominator,
		if( ( denominator == 0 ), 
			0,
			self originalDivision( denominator ) 
		) 
	);
);

(10 / 0) println;
(4 / 2) println;
(8 / 4) println;
(10 / -2) println;
(8 / 0) println;