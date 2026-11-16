# Coffee Sales Summary

A small R project that summarises synthetic coffee shop sales data. It was
built for BDA400 Assignment 1 (Markdown Buddy) to practice writing clean,
professional project documentation with AI assistance.

## Overview

The project loads a synthetic sales file (180 orders over September and
October 2026) and reports:

- total revenue and order count per product
- daily revenue, including the best sales day
- the overall average order value

The product summary is saved to `output/product_summary.csv`.

## Project Structure

```text
markdown-buddy-haseeb/
|-- README.md                      # this file
|-- coffee_sales_summary.Rmd       # R Markdown documentation of the script
|-- data/
|   `-- coffee_sales.csv           # synthetic input data
`-- scripts/
    `-- coffee_sales_summary.R     # the analysis script
```

## Installation

1. Install [R](https://cran.r-project.org/) (4.0 or newer). No extra
   packages are needed, the script uses base R only.
2. Clone this repository:

```bash
git clone https://github.com/haseebgujjar1993/markdown-buddy-haseeb.git
cd markdown-buddy-haseeb
```

## Example Usage

Run the script from the repository root so the relative paths resolve:

```r
source("scripts/coffee_sales_summary.R")
```

Example output:

```text
==== Revenue per product ====
     product revenue orders
       Latte  357.00     41
  Cappuccino  275.50     39
```

(Values shown are from the committed synthetic dataset.)

## Data

`data/coffee_sales.csv` is fully synthetic, generated in R with a fixed
seed. It contains no real customer or business data.

## License

This project is released under the MIT License. It is coursework and comes
with no warranty of any kind.

## AI Assistance Disclosure

- **Tool used:** ChatGPT (free tier, November 2026).
- **Main prompts:** "Explain what sections a good GitHub README for an R
  data analysis project should include.", "Here's a summary of my R
  project: a base R script that summarises synthetic coffee shop sales.
  Generate a professional README.md file using Markdown.", "Add sections
  for Installation, Example Code, and License. Keep tone concise and
  professional.", "Review the Markdown for syntax errors and suggest 2
  improvements for clarity."
- **Changes I made after review:** I rewrote the Overview to match what the
  script actually computes (ChatGPT's draft promised plots that do not
  exist), replaced its made-up example output with real output from my run,
  fixed the project tree (its draft listed an `R/` folder instead of
  `scripts/`), and added the Data section on synthetic data myself. I
  verified every code block renders correctly in the GitHub preview.
