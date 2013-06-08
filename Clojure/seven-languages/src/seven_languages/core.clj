(ns seven-languages.core)


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