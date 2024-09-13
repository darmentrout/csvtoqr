# CSV to QR
## *Create QR codes from CSV files*

Run the program from a terminal window on Mac or Linux.

This script uses the [zint](https://zint.org.uk/manual/) program. You can install it using your system's package handler. The following example works for Ubuntu Linux:

```sudo apt install zint```

Run the csvtoqr script with these commands:
```
cd csvtoqr
./csvtoqr.sh
```
The first command goes into the folder with the script. The second command executes the script.

You will be prompted to enter the name of the file you want to use ("sample-01.csv").
The script will create a new folder. Its name will be a combination of the source file's name and today's date ("sample-01-20240913").
QR code images will be named according to the data they contain ("BLK-001-240911-XT070.png").
