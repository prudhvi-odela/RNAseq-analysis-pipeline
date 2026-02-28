
# HISAT2 Alignment

hisat2 -x ../reference/bacteria_index \
-1 ../trimmed/sample_R1_paired.fastq \
-2 ../trimmed/sample_R2_paired.fastq \
-S ../aligned/sample.sam

# Convert SAM to BAM
samtools view -bS ../aligned/sample.sam > ../aligned/sample.bam

# Sort BAM
samtools sort ../aligned/sample.bam -o ../aligned/sample_sorted.bam

# Index BAM
samtools index ../aligned/sample_sorted.bam

