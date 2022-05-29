# Hi-C-Analysis 

This repo discusses on dealing with Hi-c data and operations on the data. About Hi-C,it measures the frequency (as an average over a cell population) at which two DNA fragments physically associate in 3D space, linking chromosomal structure directly to the genomic sequence.

## Introduction
The code covers on applying the below operations on Hi-c data:
* Visualizing Hi-C data
* Conversion of Hi-c sequence data to Hi-c Map using FANC
* Analysis on Hi-c data

## Setup

Linux/Unix setup:
* Linux Environment setup

```
sudo apt-get update 

# make a new directory
mkdir hdf5-build
cd hdf5-build

# Downloading HDF5 files
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

export HDF5_DIR=/path/to/hdf5/dir


wget -O examples.zip "https://keeper.mpdl.mpg.de/d/147906745b634c779ed3/files/?p=/examples.zip&dl=1"
unzip examples.zip
cd examples


sudo apt install bowtie2
```
* Python environment setup

```pip install -r requirements.txt```

## Sequence to Map Conversion
* For fastq sequences
```
fanc auto SRR4271982_chr18_19_1.fastq.gzip SRR4271982_chr18_19_2.fastq.gzip output/ \
          -g hg19_chr18_19.fa -i hg19_chr18_19/hg19_chr18_19 -n fanc_example -t 4 -r HindIII \
          --split-ligation-junction -q 30 --run-with test
```
* For single hic file

```fanc auto examples/test.hic ./example_output/ ```
