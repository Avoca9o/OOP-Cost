#!/bin/bash

# Clean the output file
rm -f output.txt

# C++
  g++ c++/main.cpp -o c++/main -O0
  g++ c++/main2.cpp -o c++/main2 -O0
  g++ c++/main3.cpp -o c++/main3 -O0
  
  START=$(gdate +%s%3N)
  ./c++/main
  END=$(gdate +%s%3N)
  DIFF=$(($END-$START))
  
  START=$(gdate +%s%3N)
  ./c++/main2
  END=$(gdate +%s%3N)
  DIFF2=$(($END-$START))
  
  START=$(gdate +%s%3N)
  ./c++/main3
  END=$(gdate +%s%3N)
  DIFF3=$(($END-$START))
  
  rm c++/main; rm c++/main2; rm c++/main3
  echo "c++ $DIFF ms; $DIFF2 ms; $DIFF3 ms" >> output.txt
