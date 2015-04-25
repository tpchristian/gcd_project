---
title: "README.md"
author: "Tom Christian"
date: "Saturday, April 25, 2015"
output: html_document
---

Overview
----------

This repository contains a data file called mean_phone_data_by_subject_activity.txt.  The data in this file was created for the Getting and Cleaning Data class.  It contains a summary of phone sensor data that was collected for a number people (subjects) performing various activities.  The data in this file summarizes the data by subject and activity by the calculated mean for each varable.  The only variables contained in the data were the mean and standard devication variables.

See http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for additional information on the project and the raw source data.

Loading the File into R
-----------------------------

df <- read.table("man_phone_data_by_subject_activity.txt")

Description of the Data and the Transformation Process
-------------------------
see the <a href="CodeBook.md">Code Book</a>

Recreating the Data
------------------------
1. Download the source data and unzip the "UCI HAR Dataset" folder in the main project folder. (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Source the script, run_analysis.R