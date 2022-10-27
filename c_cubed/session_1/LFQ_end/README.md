---
editor_options: 
  markdown: 
    wrap: 72
---

# LFQ of ...

Experimental details here

| Prefix | Col2                                                     |
|--------|----------------------------------------------------------|
| `p`    | `proteinGroups.txt` output file from MaxQuant            |
| `l`    | `SampleTable.xlsx` legend file describing the consitions |

# Data Dictionaries

Provide a list of the variable of interest and a description of what
they are.

## Legend files

One of the example files had over 350 variables. It's unlikely that they
are all of interest and that all output from MaxQuant was requested.
List only those you will use here:

-   `Protein IDs`
-   `Majority protein IDs`
-   ...

## Protein files

`label` `sample_name` `condition` `replicate` `batch` `genotype` `time`

# How to use

... What does another person need to know to run this.

1.  Open `analysis.R` and ...
2.  ...
