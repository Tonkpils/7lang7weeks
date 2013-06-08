(ns seven-languages.core-test
  (:require [clojure.test :refer :all]
            [seven-languages.core :refer :all]))

(def st "Hello")

(deftest a-test
  (testing "1 equals 1"
    (is (= 1 1))))

(deftest big-test
	(testing "big string is greater than n returns true"
		(is (= true (big st (- (count st) 1)))))
	(testing "big string is less than n returns false"
		(is (= false (big st (+ (count st) 1)))))
	(testing "big string is equal to n returns false"
		(is (= false (big st (count st))))))
  
(deftest collection-type-test
	(testing "col is a list"
		(is (= :list (collection-type '(1 2 3)))))
	(testing "col is a vector"
		(is (= :vector (collection-type [:hutt :wookie :ewok]))))
	(testing "col is a map"
		(is (= :map (collection-type {:hello "I'm a map"})))))

(deftest unless-test
	(testing "unless else with else"
		(is (= :hello (unless true :alpaca :hello))))
	(testing "unless else with no else"
		(is (= nil (unless true :alpaca))))
	(testing "unless body executed with no else"
		(is (= :alpaca (unless false :alpaca)))))
