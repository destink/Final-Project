# Video Game Analysis

### Topic

Our team has selected this [Video Game Sales](https://www.kaggle.com/datasets/ibriiee/video-games-sales-dataset-2022-updated-extra-feat) dataset for our analysis. Many members of our team are avid gamers and the topic is very interesting to us. Furthermore, the business aspect of the video game industry is interesting to our group and will also contribute to our professions. 

This robust dataset allows us to use the following: 
- Machine learning
- Market research
- Product development

### A description of the data

This dataset contains information on video games and their sales figures, broken down by region and possibly platform. The data is stored in multiple tables, including one table with information on the games themselves, another table with sales data, and a third table with review information. The primary key for each table is an ID column, which serves as a unique identifier for each game.

The games table includes the following columns:

* ID: unique identifier for each game
* Name: name of the game
* Platform: gaming platform for the game
* Year of release: year the game was released
* Genre: genre of the game

The sales table includes the following columns:

* ID: unique identifier for each game
* NA Sales: sales figures in North America
* EU Sales: sales figures in Europe
* JP Sales: sales figures in Japan
* Other Sales: sales figures in other regions
* Global Sales: total sales figures across all regions

The review table includes the following columns:

* ID: unique identifier for each game
* Critic Score: score given by professional critics
* Critic Count: number of critics who reviewed the game
* User Score: score given by users
* User Count: number of users who reviewed the game

To calculate the total sales figures and review scores for each game by year, the games, sales, and review tables must be merged. The merged table includes all of the preceeding columns. 

When merging the tables, care must be taken to avoid duplicating the "name" column. Additionally, the sales figures must be summed for each game and year to obtain the total sales figures.

### The Big Questions
The group final project aims to analyze video game sales and review data and answer three questions: (1) which genres of games perform well in specific regions, (2) the overall performance of games through sales-driven data, and (3) sales performance based on console. The project can be approached by following four steps: data cleaning, data exploration, data analysis, and data visualization. To analyze the data, we will use programming languages such as Python, Postgress, Tableau, Supervised Machine Learning, and Microsoft Excel. 

### Data Exploration
During our data exploration process for the assignment, we found that over 50% of the data did not contain review data. Upon further inspection, we discovered that several top-performing video game titles were missing this data. Since we wanted to explore the relationship between reviews and sales, we faced a dilemma: if we removed the rows without review data, we would lose important sales data, and if we kept the data, we would have missing review data, which could skew our analysis.

To handle this issue, we created two main datasets: one for the cleaned review data and another for the original sales data from the original dataset, keeping the rows that didn't contain review data. This enabled us to perform our analysis while retaining the important sales data that was initially missing review information. This approach allowed us to gain a more accurate understanding of the relationship between reviews and sales in the video game industry.

The project also involved creating a database with three tables in PostgreSQL using PGAdmin. Due to the large scale of the data, specific CSV files were created during the cleaning process in order to seamlessly import the data into the program. Screenshots of the database and tables were included in the ReadMe on GitHub to provide visibility into the project work.

Screenshots for the created database with at least two tables:
![image](https://user-images.githubusercontent.com/102545401/227072191-4a9ce55d-dcc1-470c-bfdd-db8c718cc1ee.png)
![image](https://user-images.githubusercontent.com/102545401/227072213-ac540259-9dd0-43e6-b5cf-cdbf6425fc16.png)
![image](https://user-images.githubusercontent.com/102545401/227072271-ad2c2a99-4141-472a-a0d3-fda057f64812.png)

### A description of the analysis phase of the project.

During the analysis phase of this assignment, our first step was to clean up the dataset by removing any outliers and null information that could skew the data set and to minimize the noise created by the abundance of categorical variables in our dataset. Once the data was cleaned, regression models were created to gain insight into (1) the correlation of user and critic scores on global sales and (2) which genres of games have the highest sales in certain regions. The goal was to evaluate the fitness of the model using various statistical tests such as the F-test or the R-squared value. If the model was a good fit for the data, it could be used to make predictions on future sales when other variables shift.

In addition, we also utilized Tableau to create a dashboard with interactive components and visualizations to further analyze the overall performance of video games through sales-driven data. This dashboard allowed us to explore the data in a more intuitive and interactive manner and provided a visual representation of the correlations and trends that were uncovered during the analysis.

Overall, the analysis provided valuable insights into the video game industry, highlighting the importance of positive reviews in driving sales and the regional differences in genre preferences. The findings of this analysis can be used by game developers and publishers to make more informed decisions regarding game development, marketing, and distribution strategies.

### Recommendations for future analysis.

1. Investigate the impact of game length on sales: This analysis could explore the relationship between the length of a video game and its sales performance. Does a longer game lead to more sales or do players prefer shorter games that can be completed quickly? This could be analyzed by looking at data on game length and sales figures.

2. Study the effect of platform on game sales: With the increasing popularity of mobile gaming, it would be interesting to explore the relationship between different gaming platforms and their impact on game sales. This analysis could look at how the platform type, such as console or mobile, affects game sales and whether certain genres perform better on specific platforms.

3. Analyze the influence of marketing on game sales: This analysis could investigate the impact of different marketing strategies on game sales, such as influencer marketing, social media advertising, or traditional marketing channels. It could look at how much a company spends on marketing and how effective those marketing campaigns are in driving sales.

4. Explore the relationship between player engagement and game sales: This analysis could investigate the relationship between player engagement, such as the number of hours played or the number of times a player logs in, and game sales. By understanding the factors that influence player engagement, game developers and publishers can create more engaging games that drive sales.

5. Investigate the impact of game reviews on game sales over time: This analysis could explore the relationship between game reviews and game sales over time. Does a game's review score continue to impact sales long after its release, or do players quickly forget about a game's score once it's been released? This could be analyzed by looking at data on game reviews and sales figures over time.

### The technologies, languages, tools, and algorithms that the team used throughout the project
For our project this far, we have utilized jupyter notebook using python for the supervised machine learning component, pgAdmin for the creation and implementation of our database and tableau for out dashboard and further analysis of video game dataset. 

### Results

### Additional Findings via Tableau: 

<img width="1300" alt="Additional_Findings" src="https://user-images.githubusercontent.com/116031639/230139087-a160c046-fac2-4184-819e-aa03b15acf3d.png">
 
