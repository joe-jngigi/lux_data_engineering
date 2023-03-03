# Exxploratory Data Analysis(EDA)

## Introduction on EDA

EDA is an important stepping stone before one begins on the exploration of **Data Analysis**. EDA is done once there is a defined problem in which can be typicaly a normal busisness problem, or a company is looking forward to look for a business opportunity. So, before conducting an analysis, there is a verification of whether the data is appropriate. A quality analysis of data depends on how well one understands the data they are dealing with. EDA si very helpful as it helps one discover and resolve Data Quality issues forexample:
>
>- Duplicates
>- Unwanted datapoints
>- Missing Data
>- Incorrect Values
>- Detect Outliers and Anomalies

EDA generates data summaries like Mean, midian, sum, count and other statistical informations. The main purpose of Exploratory data analyis is to Analyze and summarize a dataset.
> A **Dataset** is a collection of related data, typically organized in a structured format wich can be be accessed individually or in combination or managed as a whole entity.

## What is EDA?

It is an approach to analyzing data that focuses on analyzation and investigating data sets and summarize their main characteristics, often employing data visualization methods. EDA is aimed to discover the underlying structure and nature of the data, rather than simply confirming preconceived hypotheses. It uses statistical and graphical techniques, such as histograms so as to visualize the data.</br>

After completing the process of EDA and extracting insights, the characteristics of the data can be utilized for more advanced data analysis or modeling tasks, such as machine learning.

## Types of exploratory data analysis

There are four primary types of EDA

- **Univariate analysis** This EDA is Non-graphical. It is the simplest and it deals with analyzing a single variable mainly to identify patterns, trends, and outliers in the data.
- **Univariate graphical** This method provide graphical presentation, providing Histograms, a bar plot, Box plots(minimum, first quartile, median, third quartile, and maximum.)
- **Multivariate nongraphical** This involves analyzing multiple variables simultaneously to identify patterns, trends, and correlations in the data. Usually, it displays the correlation between two or more data variables by using cross-tabulation or statistical techniques.
- **Multivariate graphical** This one uses uses graphics to display relationships. The most used is a grouped bar plot or bar chart.

>>>Scatterplot, Multivariate chart, Bubble chart, Runchart and Heatmap

## EDA Tools

These are various common tools that can b e used for EDA. `Python` and `R` are the most common used for data Analysis and Visualization

- **Pandas** is a Python library that can be used for data manipulation and analysis and it provides tools that are suitable to manipulate large datsets. Pandas is built on top of **NumPy**, another popular Python library for scientific computing. Pandays can be used for Data cleaning and preparation, Data exploration, Data analysis and Time series analysis
- **Numpy** This is a python library that used in scientific computing, providing tools to work with Array and Matrices.
- **Matplotlib**A Python library for data visualization, including scatter plots, line graphs, and histograms.

- **Seaborn** A Python library for statistical data visualization, including heatmaps, cluster maps, and box plots.

>>Other common tools include; Tablue, Power BI, RStudio, SAS and IBM SPSS

EDA tools provide a range of statistical functions and techniques that can be used to gain insights and make data-driven decisions. Some of these functions include Data visualization, Correlation analysis, egression analysis, Clustering and dimension reduction techniques and clustering analysis

## Data Analysis

- Inspect & read, clean and Transform - we will use **pandas**
- We the do data modeling using statistical analysis of **pandas**, visualization tools of **matplotlib** and **seaborn**
- Extraction and derive conclusion. Here we will transform data into useful information.
- Lastly, we need to provide an infroming conclusion, by creating readable reports, dashboards</br>

**Tools**</br>
Python(Opensource, steep learning curve), Jupyter Notebooks, VS Code</br>
Pandas, matplotlib, numpy, seaborn, statsmodels, scipy, scikit-learn</br>

The real process will be:</br>
Data Extraction(read different file formats, scrapping, APIs, SQL)</br>
Data Cleaning(Missinf values, Data manipulation, outliers, statistical sanitization)</br>
Data Wrangling(Hierarchical data, handling categorical data, reshaping and transforming, data merging)</br>
Data Analysis(Capturing trends and anomalies, extracting patterns, visualization and representations, **statistical analysis***fundamental)</br>
Action(Building machine learning models, engineering, Building ETL pipelines, decision making)

### Jupyter Notebooks

This is an open source  IDE, It is an echo system of tools and primarily used in data science. You can use [NotebooksAI](https://www.notebook.ai/users/sign_up), a project that provides Jupyter Environment for free in the cloud, so no need to download the setup locally.Jupyter Notebooks is an interactive IDE which in our case it gives us an interface where we can interact with our data. The data is not visually visible like in an Excel. Working with it allows us to work with very large datasets.

The Notebook's UI is fairly easy to use and navigate, so you don't have to worry. Every codespace is a just part of a sequence of cells, that means everything works inside a cell. It supports multiple languages, but mainly I prefer using **Python** and **Markdown**. One advantage is that the Notebook work can be formatted and exported into anything someone wishes, can be a HTML file or even a PDF. Another thing is that they are optimized for data visualization, which can be quite messy if you render in a terminal(must try and render it). It provides a space where I can render charts and even make them dynamically interactive with a tool like [Bokeh](https://bokeh.org/) or [Matplotlib]

You can also use VS code to create Notebooks such as the one in Jupyter NB. You can install the extension, Jupyter notebook, and when saving or creating a new file, you use the `.ipynb` extension file name which will allow it to render as a note book in the VS code. I am currently using a [VSCodeWebVersion](https://vscode.dev/) which does not currently support a code debugger.
