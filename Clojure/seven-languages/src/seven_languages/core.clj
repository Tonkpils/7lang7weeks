(ns seven-languages.core)

(defprotocol Person
	(say [this content])
	(fall_asleep [this])
	(eat [this food]))

(defrecord Guy [name] 
	Person
	(say [this content] (str content))
	(fall_asleep [this] (str "ZzZzZz...."))
	(eat [this food] (str "I love " food)))

(defn new-user [name]
	(Guy. name))

(defn big
	"Returns true if a string st is longer than n characters"
	[st n]
	(> (count st) n))

(defn collection-type
	"Returns :list, :map, or :vector based on the type of collection col"
	[col]
	(cond 
		(map? col) :map
		(vector? col) :vector
		(list? col) :list))

(defmacro unless 
	[condition body & [else]]
	(list 'if (list 'not condition) body else))