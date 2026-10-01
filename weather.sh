#!/bin/bash

CITY=$1

DATA=$(curl -s "https://wttr.in/$CITY?format=j1")

TEMP=$(echo "$DATA" | jq -r '.current_condition[0].temp_C')
HUMIDITY=$(echo "$DATA" | jq -r '.current_condition[0].humidity')

echo "<h1>Weather: $CITY</h1>"
echo "<p>Temperature: $TEMP °C</p>"
echo "<p>Humidity: $HUMIDITY%</p>"