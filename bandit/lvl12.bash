cat data.txt | xxd -r > love
file love
mv love data2.bin.gz
gunzip data2.bin.gz
file data2.bin
mv data2.bin data2.bz2
bzip2 -d data2.bz2
file data2
mv data2 data4.bin.gz
gunzip data4.bin.gz
file data4.bin
tar xvf data4.bin
file data5.bin
tar xvf data5.bin
file data6.bin
mv data6.bin data6.bz2
bzip2 -d data6.bz2
file data6
tar xvf data6
file data8.bin
mv data8.bin data8.gz
gunzip data8.gz
file data8
cat data8
8ZjyCRiBWFYkneahHwxCv3wb2a1ORpYL
