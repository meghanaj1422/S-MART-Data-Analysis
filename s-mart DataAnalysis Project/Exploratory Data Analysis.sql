#Exploratory Data Analysis

SELECT*
FROM customer_data_staging4;

SELECT `Name`
FROM customer_data_staging4;

SELECT MAX(`Rate the Marketing(Advertising) of the s-mart ?`), MIN(`Rate the Marketing(Advertising) of the s-mart ?`)
FROM customer_data_staging4;

SELECT SUM(`Rate the Marketing(Advertising) of the s-mart ?`)/5 AS "Total_5"
FROM customer_data_staging4
WHERE `Rate the Marketing(Advertising) of the s-mart ?`=5; #12

SELECT SUM(`Rate the Marketing(Advertising) of the s-mart ?`)/2 AS "Total_2"
FROM customer_data_staging4
WHERE `Rate the Marketing(Advertising) of the s-mart ?`=2; #8

#77-(12+8)=57 (rating 3=20,4=37)

SELECT SUM(`Rate the Marketing(Advertising) of the s-mart ?`)/3 AS "Total_3"
FROM customer_data_staging4
WHERE `Rate the Marketing(Advertising) of the s-mart ?`=3; #20

SELECT SUM(`Rate the Marketing(Advertising) of the s-mart ?`)/4 AS "Total_4"
FROM customer_data_staging4
WHERE `Rate the Marketing(Advertising) of the s-mart ?`=4; #37

SELECT `What time of day do you usually shop at the mart?`, COUNT(`What time of day do you usually shop at the mart?`)
FROM customer_data_staging4
WHERE `What time of day do you usually shop at the mart?`='Evening'
GROUP BY `What time of day do you usually shop at the mart?`;#57

SELECT `What time of day do you usually shop at the mart?`, COUNT(`What time of day do you usually shop at the mart?`)
FROM customer_data_staging4
WHERE `What time of day do you usually shop at the mart?`='Night'
GROUP BY `What time of day do you usually shop at the mart?`;#10

SELECT `What time of day do you usually shop at the mart?`, COUNT(`What time of day do you usually shop at the mart?`)
FROM customer_data_staging4
WHERE `What time of day do you usually shop at the mart?`='Afternoon'
GROUP BY `What time of day do you usually shop at the mart?`;#7

SELECT `What time of day do you usually shop at the mart?`, COUNT(`What time of day do you usually shop at the mart?`)
FROM customer_data_staging4
WHERE `What time of day do you usually shop at the mart?`='Morning'
GROUP BY `What time of day do you usually shop at the mart?`;#3

SELECT `Is Discount applied on your products ?`, COUNT(`Is Discount applied on your products ?`)
FROM customer_data_staging4
WHERE `Is Discount applied on your products ?`='May be'
GROUP BY `Is Discount applied on your products ?`;

#Yes=30, No=6, May be = 41

SELECT `What is the typical size of your shopping trip at the mart?`, COUNT(`What is the typical size of your shopping trip at the mart?`)
FROM customer_data_staging4
WHERE `What is the typical size of your shopping trip at the mart?`='Large (16+ items)'
GROUP BY `What is the typical size of your shopping trip at the mart?`;

#'Small (1-5 items)'=38 , 'Medium (6-15 items)'= 35, 'Large (16+ items)'= 4

SELECT `Age`, COUNT(`Age`)
FROM customer_data_staging4
WHERE `Age`='26 - 45'
GROUP BY `Age`;

#'17 - 25' = 67 '26 - 45'= 10

