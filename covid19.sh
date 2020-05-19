#!/bin/bash

URL="https://services1.arcgis.com/0MSEUqKaxRlEPj5g/arcgis/rest/services/Coronavirus_2019_nCoV_Cases/FeatureServer/1/query?where=UPPER(Province_State)%20like%20'%25NEW_YORK%25'&outFields=Province_State,Country_Region,Last_Update,Lat,Long_,Confirmed,Recovered,Deaths&outSR=4326&f=json"
RESPONSE=$(curl -s "$URL")
INFECTED=$(echo "$RESPONSE" | jq '.features[0].attributes.Confirmed')
DEATHS=$(echo "$RESPONSE" | jq '.features[0].attributes.Deaths')
RECOVERED=$(echo "$RESPONSE" | jq '.features[0].attributes.Recovered')

echo "COVID19 Tracker - Confirmed: $INFECTED, Deaths: $DEATHS, Recovered: $RECOVERED"
