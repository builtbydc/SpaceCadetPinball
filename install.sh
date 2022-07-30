#!/bin/bash

mkdir build
cd build
cmake ..
cmake --build .
cd ..

curl -L -o CADET.zip "https://drive.google.com/uc?export=download&id=13npTBhROHo5NjSJir3zKTMBC_27udHcy"
unzip CADET.zip
mv CADET/CADET.DAT bin/
mv CADET/SOUND/ bin/
rm -r CADET
rm CADET.zip

./bin/SpaceCadetPinball


