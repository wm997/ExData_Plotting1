# Exploratory Data Analysis - Course Project 1

This repository contains the code and plots for the first course project of the Exploratory Data Analysis course on Coursera.

## Dataset

The analysis uses the "Individual household electric power consumption" dataset from the UC Irvine Machine Learning Repository:
- Original source: https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption

Only data from **February 1 and 2, 2007** were used in the analysis.

## Files

This repository includes the following files:

- `plot1.R` — R script to generate `plot1.png`: Histogram of Global Active Power.
- `plot2.R` — R script to generate `plot2.png`: Line plot of Global Active Power over time.
- `plot3.R` — R script to generate `plot3.png`: Energy sub-metering time series with legend.
- `plot4.R` — R script to generate `plot4.png`: 2x2 panel of various power consumption plots.

All scripts include the data loading and preprocessing code, so they are fully reproducible.

## How to Run

1. Clone the repo:
   ```bash
   git clone https://github.com/YOUR_USERNAME/ExData_Plotting1.git
   
2. Place household_power_consumption.txt in the root of the folder if not already included.

3. Open RStudio, set working directory to the repo folder, and run each script:
  source("plot1.R")
  source("plot2.R")
  source("plot3.R")
  source("plot4.R")
  
Each script will generate a corresponding PNG file in the working directory.


