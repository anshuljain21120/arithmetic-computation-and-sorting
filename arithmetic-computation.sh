#! /bin/bash -x
echo "Welcome to Arithmetic Computation & Sorting!"
echo "This problem computes different arithmetic expressions and Sorts the results."

read -p "Enter variable a: " a;
read -p "Enter variable b: " b;
read -p "Enter variable c: " c;

operation1=$((a + b * c));
operation2=$((a * b + c));
operation3=$((c + a / b));
operation4=$((a % b + c));

declare -A operation_results;
operation_results=(["Operation_1"]="$operation1" ["Operation_2"]="$operation2" ["Operation_3"]="$operation3" ["Operation_4"]="$operation4");

declare -a array_of_operation_results;
for result in ${operation_results[@]}
do
	array_of_operation_results+=( $result );
done
