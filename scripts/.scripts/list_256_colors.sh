#!/bin/bash

 echo "256 colors in one column:"

 for i in {0..255}; do
     # Print color number and display the color
     printf "\x1b[38;5;%sm%3d\x1b[0m\n" $i $i
 done
