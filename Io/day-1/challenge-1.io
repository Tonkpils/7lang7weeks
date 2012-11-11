// I decided to mess around with the Io language since there's not a challenge for this day
// I'll just throw up a contact book with a few methods

// Make initial objects such as ContactBook and Person.
ContactBook := Object clone;
Person := Object clone;

// Add a few attributes to a person
Person name ::= "";
Person number ::= "";

Person init := method( name, number,
	self setName( name );
	self setNumber( number );

	return ( self );
);

// Add initializer to ContactBook and some methods
ContactBook init := method(
	self people := Map clone;

	return ( self );	
);

ContactBook call := method( name, 
	return (
		("Calling #{name}...Phone Number: " .. self people at( name ) number ) interpolate println;
	);
);

ContactBook add := method( person,
	self people atPut( person name, person );

);


contacts := ContactBook clone init();

bob := Person clone init("Bob", "1231234567");
jane := Person clone init("Jane", "1234567890");


contacts add(bob);
contacts add(jane);

contacts call("Bob");
contacts call("Jane");




