SELECT * FROM `s-mart_analysis`.customer_data;

#DATA CLEANING

SELECT *
FROM customer_data;

# Step-1 : REMOVE DUPLICATES
# step-2 : STANDARDIZE DATA
# step-3 : NO VALUES/BLANK VALUES
# step-4 : REMOVE UNNECESSARY ROWS/COLUMNS

CREATE TABLE customer_data_staging
LIKE customer_data;

INSERT customer_data_staging
SELECT *
FROM customer_data;
SELECT*
FROM customer_data_staging;

#REMOVING DUPLICATES starts here
SELECT*,
ROW_NUMBER() OVER(
PARTITION BY `Name`, Age, `What Category products you purchase the most ?`, `Payment methods you use the most`, `What kind of Sales-Person draw your attention?`,
 `What time of day do you usually shop at the mart?`,
 `Days you enjoy to shop in s-mart ?`, `Is Discount applied on your products ?`,
 `What is the typical size of your shopping trip at the mart?`,
`Rate the Marketing(Advertising) of the s-mart ?`,`Would You often visit s-mart ?`,
 `What do you like the most about shopping at this mart?`,
 `Any other suggestions or feedback for us?`, `Email address`) as row_num
FROM customer_data_staging;



















