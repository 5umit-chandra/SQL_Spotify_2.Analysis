# **🟢Spotify Data Analysis 2023**

## 📊 Data Analysis

- Explore the SQL queries in the  [SQL_queries.sql](SQL_queries.sql) file to understand the step-by-step process.
- Queries are designed for clarity.

## 📝 Overview
This project delves into the most streamed Spotify songs of 2023, utilizing SQL queries to extract valuable insights. 
### Here's a brief rundown of the key findings:

1. __Artist Dominance__
    - **Insight:** Morgan Wallen emerges with 8 songs topping the charts, surpassing industry giants like Taylor Swift.
    - **Significance:** Reveals shifting user preferences and showcases the diversity in music tastes.
2. __Monthly Streaming Trends__
    - **Insight:** January sees the highest streams in 2023.
    - **Significance:** Identifies a consistent trend, suggesting heightened music consumption around the start of the year.
3. __Danceability vs. Popularity__
    - **Insight:** Danceability doesn't uniformly correlate with popularity; 26-50% danceability attracts the most streams.
    - **Significance:** Challenges conventional assumptions about danceability's impact on streaming metrics.
4. __Release Year Impact__
    - **Insight:** Only 18% of top songs in 2023 were released the same year.
    - **Significance:** Emphasizes the enduring popularity of older songs, guiding strategic content release for artists.

## ℹ️ Dataset Source
- The Dataset is downloaded from [Kaggle.com](https://www.kaggle.com/). [spotify-2023.csv](MySQL_Schemea_and_Data/spotify-2023.csv)

## 💾 Raw Data
To facilitate analysis, the dataset was imported into MySQL. The schema for the MySQL database is defined in [Schemea.sql](MySQL_Schemea_and_Data/Schemea.sql), and the data is loaded into the table using [spotify_2023_spotify_data.sql](MySQL_Schemea_and_Data/spotify_2023_spotify_data.sql).

## 👨‍💻 Data Import Process
> [!TIP]
> **MySQL Data Import:**
>   - Utilize the "Table Data Import Wizard" for efficient data import process.
>   - After creating the desired schema, right-click on the table.
>   - Select "Table Data Import Wizard," choose the CSV file, set delimiters, and review the data.

 Or use this SQL query

```
-- Example SQL import query
LOAD DATA INFILE 'MySQL_Schemea_and_Data\spotify-2023.csv'
INTO TABLE spotify_data
-- Specify field delimiter in CSV
FIELDS TERMINATED BY ','
-- encloser fields containing text
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
-- skips the first row of CSV
IGNORE 1 ROWS;

```
