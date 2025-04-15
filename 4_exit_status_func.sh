#!/bin/bash

function try {
   echo " trying to list the non-existence file."
   ls -l nonfile
   echo " i dont know what is exit status is now"
}
echo " testing the function: "
try
echo "the exit status : $?"
