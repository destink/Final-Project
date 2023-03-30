# Final-Project

## Segment 1

### The selected topic and the reasoning for that selection (20 points)

Our team has selected this [Video Game Sales](https://www.kaggle.com/datasets/ibriiee/video-games-sales-dataset-2022-updated-extra-feat) dataset and this [Popular Video Game](https://data.world/yansian/popular-video-games) dataset to use for our analysis. Many members of our team are avid gamers and the topic is very interesting to us. Furthermore, the business aspect of the video game industry is interesting to our group and will also contribute to our professions. 

These robust datasets allow us to use the following: 
- Machine learning
- Market research
- Product development

### A description of the data (20 points)
The dataset we will be analyzing has infromation from over 8,000 different video games. The data we will analyze provides the following categorical information on each of the games: 
- year of release 
- genre 
- publisher
- maturity rating 

The dataset also breaks down each games success informtion by:
- sales by global regions (North Am, Europe, Japan)
- global sales
- critic score
- user scores
- meta score
- user reviews

The final dataset we will analyze is a result of two merged datasets, so that we could have more information on critic/user scores for the set of games reviewed. 

### The questions that the team plans to answer with the project (20 points)
The group final project aims to analyze video game sales and review data and answer three questions: (1) which genres of games perform well in specific regions, (2) the overall performance of games through sales-driven data, and (3) sales performance based on console. The project can be approached by following four steps: data cleaning, data exploration, data analysis, and data visualization. To analyze the data, we will use programming languages such as Python, Postgress, Tableau, Supervised Machine Learning, and Microsoft Excel. 

### A description of the data exploration phase of the project (5 points) - Jordan
During our data exploration process for the assignment, we found that over 50% of the data did not contain review data. Upon further inspection, we discovered that several top-performing video game titles were missing this data. Since we wanted to explore the relationship between reviews and sales, we faced a dilemma: if we removed the rows without review data, we would lose important sales data, and if we kept the data, we would have missing review data, which could skew our analysis.

To handle this issue, we created two main datasets: one for the cleaned review data and another for the original sales data from the original dataset, keeping the rows that didn't contain review data. This enabled us to perform our analysis while retaining the important sales data that was initially missing review information. This approach allowed us to gain a more accurate understanding of the relationship between reviews and sales in the video game industry.

The project also involved creating a database with three tables in PostgreSQL using PGAdmin. Due to the large scale of the data, specific CSV files were created during the cleaning process in order to seamlessly import the data into the program. Screenshots of the database and tables were included in the ReadMe on GitHub to provide visibility into the project work.

Screenshots for the created database with at least two tables:
![image](https://user-images.githubusercontent.com/102545401/227072191-4a9ce55d-dcc1-470c-bfdd-db8c718cc1ee.png)
![image](https://user-images.githubusercontent.com/102545401/227072213-ac540259-9dd0-43e6-b5cf-cdbf6425fc16.png)
![image](https://user-images.githubusercontent.com/102545401/227072271-ad2c2a99-4141-472a-a0d3-fda057f64812.png)

### A description of the analysis phase of the project (5 points) - Destin
Our first step of the analysis phase of the project has been to clean up the dataset to eliminate any outliers and null information that will skew the data set and to minimize the noise created by the abundance of categorical variables in our dataset. Our next step has been creating regression models to gain insight in to (1) the correlation of user and critic scores on global sales and (2) which genres of games have the highest sales in certain regions. Our next step will be evaluating the fitness of the model using various statistical tests such as the F-test or the R-squared value. If the model is a good fit for the data, we can use it to make predictions on futures sales when other variables shift. We have also utilized tableau to create a dashboard with interactive components and visualizations to further analyze the overall performance of video games through sales-driven data. 
### The technologies, languages, tools, and algorithms that the team used throughout the project (3 points) - all
For our project this far, we have utilized jupyter notebook using python for the supervised machine learning component, pgAdmin for the creation and implementation of our database and tableau for out dashboard and further analysis of video game dataset. 
