Performance tests for BAM libraries
=====================================

* [htslib](https://github.com/samtools/htslib)
* [bamtools](https://github.com/pezmaster31/bamtools)
* [SeqAn](https://github.com/seqan/seqan)
* [pysam](https://github.com/pysam-developers/pysam)

In this simple version just the read performance is measured.

Results
-------

- htslib 31s
- bamtools 39s
- pysam 59s
- SeqAn 7m08s

Running the tests
-----------------

```
./test.sh <testing-bam-file>
```

To run the test you need to have all to-be-tested libraries installed.
