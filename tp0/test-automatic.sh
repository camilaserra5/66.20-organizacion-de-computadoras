#!/bin/bash

echo "##########################################################"
echo "################### Tests Automaticos ####################"
echo "##########################################################"
echo ""

echo "#---------------------------------------------------------"
echo "#----------# COMIENZA Test 01 - Archivo Vacio #-----------"

touch ./test-out/zero.txt
./tp0 -i ./test-out/zero.txt -o ./test-out/zero-encoded.txt
ls -l ./test-out/zero-encoded.txt

if diff -b ./test-out/zero.txt ./test-out/zero-encoded.txt; then
	echo "[OK]";
else
	echo "[ERROR]";
fi

echo "#----------# TERMINA  Test 01 - Archivo Vacio #-----------"
echo "#---------------------------------------------------------"
echo ""

echo "#----------# COMIENZA Test 02 - Stdin Input   #-----------"

echo -n Test02 > ./test-out/stdin-test.txt
ls -l ./test-out/stdin-test.txt

cat ./test-out/stdin-test.txt | ./tp0 -o ./test-out/stdin-encoded.txt
ls -l ./test-out/stdin-encoded.txt

cat ./test-out/stdin-encoded.txt | ./tp0 --decode -o ./test-out/stdin-decoded.txt
ls -l ./test-out/stdin-decoded.txt

if diff -b ./test-out/stdin-test.txt ./test-out/stdin-decoded.txt; then
	echo "[OK]";
else
	echo "[ERROR]";
fi


echo "#----------# TERMINA  Test 02 - Stdin Input   #-----------"
echo "#---------------------------------------------------------"
echo ""


echo "#----------# COMIENZA Test 03 - Stdout Output  #-----------"

echo -n Test03 > ./test-out/stdout-test.txt
ls -l ./test-out/stdout-test.txt

./tp0 -i ./test-out/stdout-test.txt > ./test-out/stdout-encoded.txt
ls -l ./test-out/stdout-encoded.txt

./tp0 --decode -i ./test-out/stdout-encoded.txt > ./test-out/stdout-decoded.txt
ls -l ./test-out/stdout-decoded.txt

if diff -b ./test-out/stdout-test.txt ./test-out/stdout-decoded.txt; then
	echo "[OK]";
else
	echo "[ERROR]";
fi


echo "#----------# TERMINA  Test 02 - Stdout Output  #-----------"
echo "#----------------------------------------------------------"
echo ""



echo "#----------# COMIENZA Test 04 - Stdin Stdout  #-----------"

echo -n Test04 > ./test-out/stdin-stdout-test.txt
ls -l ./test-out/stdin-stdout-test.txt

cat ./test-out/stdin-stdout-test.txt | ./tp0 > ./test-out/stdin-stdout-encoded.txt
ls -l ./test-out/stdin-stdout-encoded.txt

cat ./test-out/stdin-stdout-encoded.txt | ./tp0 --decode > ./test-out/stdin-stdout-decoded.txt
ls -l ./test-out/stdin-stdout-decoded.txt

if diff -b ./test-out/stdin-stdout-test.txt ./test-out/stdin-stdout-decoded.txt; then
	echo "[OK]";
else
	echo "[ERROR]";
fi


echo "#----------# TERMINA  Test 04 - Stdin Stdout  #-----------"
echo "#---------------------------------------------------------"
echo ""




