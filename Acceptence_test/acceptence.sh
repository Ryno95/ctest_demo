#!/bin/bash

./mathing
RETURN=$(echo $?)

if [ $RETURN == "2" ]
then
    echo "As Expected for no input"
fi

./mathing stri
RETURN=$(echo $?)

if [ $RETURN == "1" ]
then
    echo "As Expected for too long input"
else
    echo "Error on too long input"
fi
