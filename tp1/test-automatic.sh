#!/bin/bash

echo "##########################################################"
echo "################### Tests Automaticos ####################"
echo "##########################################################"
echo ""

echo "#---------------------------------------------------------"
echo "#----------# COMIENZA Test 01 - Help #-----------"

./common -h > ./test-out/test01-stdout.txt

if diff -b ./test-out/test01-stdout.txt ./expected/test01-stdout.txt ; then
	echo "[OK]";
else
	echo "[ERROR]";
fi

echo "#----------# TERMINA  Test 01 - Help #-----------"
echo "#---------------------------------------------------------"
echo ""

echo "#----------# COMIENZA Test 02 - Version   #-----------"

./common -V > ./test-out/test02-stdout.txt

if diff -b ./test-out/test02-stdout.txt ./expected/test02-stdout.txt ; then
	echo "[OK]";
else
	echo "[ERROR]";
fi

echo "#----------# TERMINA  Test 02 - Version  #-----------"
echo "#---------------------------------------------------------"
echo ""

echo "#----------# COMIENZA Test 03 - mcm stdout #-----------"

./common -m 256 192 > ./test-out/test03-stdout.txt

if diff -b ./test-out/test03-stdout.txt ./expected/test03-stdout.txt ; then
	echo "[OK]";
else
	echo "[ERROR]";
fi

echo "#----------# TERMINA  Test 03 - mcm stdout #-----------"
echo "#----------------------------------------------------------"
echo ""

echo "#----------# COMIENZA Test 04 - mcm -o #-----------"

./common -m 256 192 -o ./test-out/test04-stdout.txt

if diff -b ./test-out/test04-stdout.txt ./expected/test04-stdout.txt ; then
	echo "[OK]";
else
	echo "[ERROR]";
fi

echo "#----------# TERMINA  Test 04 - mcm -o #-----------"
echo "#----------------------------------------------------------"
echo ""


echo "#----------# COMIENZA Test 05 - mcd stdout #-----------"

./common -d 256 192 > ./test-out/test05-stdout.txt

if diff -b ./test-out/test05-stdout.txt ./expected/test05-stdout.txt ; then
	echo "[OK]";
else
	echo "[ERROR]";
fi

echo "#----------# TERMINA  Test 05 - mcd stdout #-----------"
echo "#----------------------------------------------------------"
echo ""

echo "#----------# COMIENZA Test 06 - mcd -o #-----------"

./common -d 256 192 -o ./test-out/test06-stdout.txt

if diff -b ./test-out/test06-stdout.txt ./expected/test06-stdout.txt ; then
	echo "[OK]";
else
	echo "[ERROR]";
fi

echo "#----------# TERMINA  Test 06 - mcd -o #-----------"
echo "#----------------------------------------------------------"
echo ""



echo "#----------# COMIENZA Test 07 - both stdout #-----------"

./common 256 192 > ./test-out/test07-stdout.txt

if diff -b ./test-out/test07-stdout.txt ./expected/test07-stdout.txt ; then
	echo "[OK]";
else
	echo "[ERROR]";
fi

echo "#----------# TERMINA  Test 07 - both stdout #-----------"
echo "#----------------------------------------------------------"
echo ""

echo "#----------# COMIENZA Test 08 - both -o #-----------"

./common 256 192 -o ./test-out/test08-stdout.txt

if diff -b ./test-out/test08-stdout.txt ./expected/test08-stdout.txt ; then
	echo "[OK]";
else
	echo "[ERROR]";
fi

echo "#----------# TERMINA  Test 08 - both -o #-----------"
echo "#----------------------------------------------------------"
echo ""
