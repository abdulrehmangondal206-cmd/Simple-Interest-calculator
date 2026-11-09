#!/bin/bash

# Simple Interest Calculator

echo "=== Simple Interest Calculator ==="

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (% per year): " rate
read -p "Enter the time period (in years): " time

interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "-------------------------------"
echo "Principal       : $principal"
echo "Rate of interest: $rate %"
echo "Time period     : $time years"
echo "Simple Interest : $interest"
echo "Total Amount    : $total"
