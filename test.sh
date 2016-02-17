#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BAM="$1"

if [ -z "$BAM" ] ; then
	echo "No testing bam file provided"
	exit
fi

mkdir -p "$DIR"/build

(
cd "$DIR"/build
cmake ..
make
)

for f in hts bamtools seqan ; do
   echo "testing $f"
   time "$DIR/build/$f/prun_$f" ${BAM} "foo"
done

time "$DIR/pysam" ${BAM} "foo"
