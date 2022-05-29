# make a new directory
mkdir hdf5-build
cd hdf5-build
# replace xx with current version number
wget https://support.hdfgroup.org/ftp/HDF5/current/src/hdf5-1.10.5.tar.gz
# unpack
tar xzf hdf5-1.10.5.tar.gz
cd hdf5-1.10.5.tar.gz/
# use --prefix to set the folder in which HDF5 should be installed
# alternatively, you can omit --prefix=... here and run
# sudo make install to install globally (requires admin rights)
./configure --prefix=./hdf5-build
make
make install

#export HDF5_DIR=/path/to/hdf5/dir


wget -O examples.zip "https://keeper.mpdl.mpg.de/d/147906745b634c779ed3/files/?p=/examples.zip&dl=1"
unzip examples.zip
cd examples

fanc auto SRR4271982_chr18_19_1.fastq.gzip SRR4271982_chr18_19_2.fastq.gzip output/ \
          -g hg19_chr18_19.fa -i hg19_chr18_19/hg19_chr18_19 -n fanc_example -t 4 -r HindIII \
          --split-ligation-junction -q 30 --run-with test