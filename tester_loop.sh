#! /bin/bash

let i=0;
let nb_failed=0;
for TEST in $tests_path/*; do
	((i+=1))
	expected_out=$(eval bash $TEST 2>&1)
	test_out=$(eval ${prog_pathname} $TEST 2>&1)
	
	TEST_CLR="$GRN"
	OK_OUT=1
	
	if [ "$expected_out" != "$test_out" ]; then
		TEST_CLR="$RED"
		OK_OUT=0
	fi;
	
	echo -e "\n-----------------------------------------"
	echo -e "$TEST_CLR Test    $i:$WHT $TEST"
	if [ $OK_OUT == 0 ]; then
		>out_bash echo "$expected_out"
		>out_minishell echo "$test_out"
		echo -e "$YEL Diff for program output:$WHT"
		diff -y -W 200 out_bash out_minishell
		rm -f out_bash out_minishell
		((nb_failed+=1))
	fi;
done
let nb_passed=$i-$nb_failed;
echo -e "\n\t$BLU PASSED: $nb_passed/$i  |  FAILED: $nb_failed$WHT"
