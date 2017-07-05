#!/bin/sh
#./gen n m Q update read delete insert threshold thread

./gen 100000 10 100000 1 1 0 0 10 1

./gen 100000 10 100000 1 99 0 0 10 1

./gen 100000 10 100000 1 19 0 0 10 1
./gen 100000 10 100000 1 9 0 0 10 1
