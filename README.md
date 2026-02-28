# RNA-Seq Analysis Pipeline (Single Sample)

## 📌 Project Overview

This project demonstrates a basic RNA-Seq data analysis workflow using a single paired-end sequencing dataset. The pipeline includes quality control, read trimming, genome alignment, and gene expression quantification.

The purpose of this project is to illustrate the fundamental steps involved in RNA-Seq data processing and to provide reproducible scripts for educational and research purposes.

---

## 🧬 Dataset Information

* Sequencing Type: Paired-end RNA-Seq
* Number of Samples: 1
* Organism: Bacterial genome
* Input Format: FASTQ
* Output: Gene count matrix

This project uses a single dataset to demonstrate the workflow rather than performing differential expression analysis.

---

## ⚙️ Pipeline Workflow

The RNA-Seq analysis pipeline consists of the following steps:

1. **Quality Control**

   * Tool: FastQC
   * Purpose: Assess raw read quality

2. **Read Trimming**

   * Tool: Trimmomatic
   * Purpose: Remove adapters and low-quality bases

3. **Reference Genome Preparation**

   * Tool: HISAT2-build
   * Purpose: Generate genome index

4. **Alignment**

   * Tool: HISAT2
   * Output: SAM/BAM alignment files

5. **Post-processing**

   * Tool: SAMtools
   * Steps:

     * SAM → BAM conversion
     * Sorting
     * Indexing

6. **Gene Quantification**

   * Tool: featureCounts
   * Output: Gene expression counts

---

## 📂 Project Structure

```
RNAseq_Project/
│── scripts/
│     ├── alignment.sh
│     └── counts.sh
│
│── reference/
│     ├── genome.fna
│     └── annotation.gff
│
│── qc/
│     └── FastQC reports
│
│── results/
│     └── counts.txt
│
│── README.md
```

Note: Large intermediate files such as FASTQ, BAM, and SAM are not included due to file size limitations. They can be regenerated using the provided scripts.

---

## 🛠️ Tools and Software

* FastQC
* Trimmomatic
* HISAT2
* SAMtools
* featureCounts (Subread package)
* Linux / Ubuntu (WSL environment)

---

## ▶️ How to Run

### Step 1 — Clone Repository

```
git clone https://github.com/your-username/RNAseq_Project.git
cd RNAseq_Project
```

### Step 2 — Run Alignment

```
bash scripts/alignment.sh
```

### Step 3 — Generate Counts

```
bash scripts/counts.sh
```

---

## 📊 Output

The final output is a gene count matrix:

```
results/counts.txt
```

This file contains gene-level expression counts derived from aligned reads.

---

## 📈 Results Summary

* Total Reads Processed: ~1.3 million
* Alignment Rate: ~99%
* Successfully generated sorted BAM and count matrix

---

## 🎯 Learning Objectives

This project demonstrates:

* RNA-Seq workflow understanding
* Command-line bioinformatics tools
* Alignment and quantification methods
* Pipeline reproducibility using shell scripts

---

## 🚀 Future Improvements

* Multiple samples analysis
* Differential expression (DESeq2 / edgeR)
* Visualization and downstream analysis in R
* Workflow automation using Snakemake or Nextflow

---

## 👨‍💻 Author

Prudhvi Teja

Bioinformatics Enthusiast | RNA-Seq Analysis | Computational Biology

---

## 📜 License

This project is licensed undeer the MIT License - see the LICENSE file for details.
