Performance tests for BAM libraries
=====================================

* [htslib](https://github.com/samtools/htslib)
* [bamtools](https://github.com/pezmaster31/bamtools)
* [SeqAn](https://github.com/seqan/seqan)
* [pysam](https://github.com/pysam-developers/pysam)

In this simple version just the read performance is measured.

Results
-------

For parsing simulated reads of chromosome 1 (~2.2 GB) in the BAM format:

- SeqAn 17s
- htslib 31s
- bamtools 39s
- pysam 59s

(specs: i7 4700 (8 cores), 16 RAM, SSD)

Running the tests
-----------------

```
./test.sh <testing-bam-file>
```

To run the test you need to have all to-be-tested libraries installed.
