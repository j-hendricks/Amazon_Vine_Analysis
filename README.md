# Amazon_Vine_Analysis

## Overview

In this project, Amazon Vine reviews for various shoes were analyzed to determine if there is any bias in the ratings between vine members (paid) and non-vine members (unpaid). In addition, the data was transformed and stored in various SQL tables for future reference. Since the data is very large, the data was extracted from Amazon Web Services (AWS), a cloud service, and loaded into Google Colab using PySpark. 

Here is what the shoe reviews look like as a PySpark dataframe: 

![spark_df](spark_dataframe_example.png)

## Results

After the data was stored as SQL tables (see example below), the data was manipulated in PySpark such that the proportion of 5 star reviews could be calculated for both the vine reviews and non-vine reviewers. The results were converted into a Pandas dataframe as seen below. 

![sql_table](sql_table_example.png)

![df](pandas_dataframe.png)

It is evident that the proportion of 5 star reviews are different between paid and unpaid members, but is this difference statistically significant? To determine this, a statistical test of proportions was applied using R to the data in the Pandas dataframe. The results of the test are shown below. The p-value is greater than 0.05, so the test fails to reject the null. In other words, no difference in ratings can be concluded from this data. 

![stat_results](stat_test_results.png)

## Summary

Because the statistical test resulted in a p-value greater than 0.05, there is no evidence of bias between paid and unpaid reviews. To increase the power of this statistical test, more paid reviews would be necessary, as there were only 22 reviews in total. One possibility would be to relax the filters applied to the data. For example, reviews that had less than 20 upvotes were filtered out during the analysis. This could be decreased to, say, 10 so that we have more data. Moreover, this project only analzyed shoe reviews. To increase the sample size - as well as make the data more generalizable - reviews from other products could be added to the dataset. 






