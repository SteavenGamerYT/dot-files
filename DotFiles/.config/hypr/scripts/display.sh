#!/bin/bash

sleep 2
pkill redshift

sleep 2
redshift -l 30.0444:31.2357
