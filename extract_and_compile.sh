#!/bin/bash
tar -xzf NthPrime.tgz -C $2
cd $2/NthPrime
gcc -c main.c nth_prime.c
gcc -o NthPrime main.o nth_prime.o 
./NthPrime $1
