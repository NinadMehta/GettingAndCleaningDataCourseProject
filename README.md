run_analysis.R is script for cleaning the data sets test and train provided in getdata-projectfiles-UCI HAR Dataset 
and performing analysis based on Mean and standard deviations given in te data.


To run_analysis.R and perform analysis I followed below approach,
1. Unzip "getdata-projectfiles-UCI HAR Dataset" folder in our working directory.
2. Read all training and test datasets and combine all the featues vectors, labels and subject Ids for these datasets.
3. Now combine training and test datasets into one dataset.
4. Read features file, clean the names and indentify measurements related to mean and standard deviation.
5. Read activity description file.
6. Select rows related to mean and standard deviation from dataset obtained in step 3.
7. Apply all the cleaned names to the feaures created in step 6.
8. To create final tidy data set, calculate mean of all metrics for each subject id and activity description.
9. Output the tidy data set to tidy_data.txt.