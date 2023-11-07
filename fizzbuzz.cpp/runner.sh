#!/bin/bash

directory="$HOME/lain/fizzbuzz.cpp"

g++ -o "$directory/fizzbuzz" "$directory/fizzbuzz.cpp"

correct=0
total=3

for testdir in "$directory"/test*; do
	if [ -d "$testdir" ]; then
		"$directory/fizzbuzz" < "$testdir/input.txt" > "$testdir/actual.txt"
		if cmp -s "$testdir/output.txt" "$testdir/actual.txt"; then
			echo "correct"
			correct=$(( $correct + 1))
		else
			echo
			echo "--expected output--"
			cat "$testdir/output.txt"
			echo
			echo "--actual output--"
			cat "$testdir/actual.txt"
			echo
			echo "This is wrong, stopping test..."
			break
		fi
	fi
#	total=$(( $total + 1))
done

echo "Number of test cases correct: $correct / $total"
