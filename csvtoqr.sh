#!/bin/bash
# https://www.baeldung.com/linux/csv-parsing
# https://www.howtogeek.com/826549/parse-csv-data-in-bash/
#
# exec < input.csv
# read header
# while read line
# do
#    echo "Record is : $line"
# done 
#
# while IFS="," read -r rec_column1 rec_column2 rec_column3 rec_column4
# do
#   echo "Displaying Record-$rec_column1"
#   echo "Quantity: $rec_column2"
#   echo "Price: $rec_column3"
#   echo "Value: $rec_column4"
#   echo ""
# done < <(tail -n +2 input.csv)
#
#
read -p "Enter file name : " filename
basename="${filename%.*}"
timestamp=$(date +"%Y%m%d")
destfolder="$basename-$timestamp"
mkdir $destfolder
while IFS="," read -r prefix id date project
do
  projectF=${project//$'\r'}
  filename="$destfolder/$prefix-$id-$date-$projectF.png"
  zint -b 58 -o $filename --scale=4 --whitesp=1 --vwhitesp=1 -d "$prefix $id $date $projectF" --esc
done < <(tail -n +2 sample-01.csv)