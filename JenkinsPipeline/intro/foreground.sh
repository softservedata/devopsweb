#!/bin/bash

echo off

while [ ! -f /tmp/backgroundintro ]
 do
  sleep 2
  echo -n "."
done

echo "Jenkins is up and running"
