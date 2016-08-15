(ns seven-languages.compass)

(defprotocol Compass 
	(direction [c])
	(left [c])
	(right [c]))

(def directions [:nort :east :south :west])

(def turn
	[base amount]
	(rem (+ base amount) (acount directions)))