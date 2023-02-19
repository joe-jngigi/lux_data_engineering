# Import libraries
import numpy as np
from matplotlib import pyplot as plt

import seaborn as sns
import pandas as pd

# This will be used to read the csv file
df = pd.read_csv('archive/IT Salary Survey EU 2018.csv')
# On terminal, print first five rows ... last five rowa
print(df)
# the total number of rows and columns in the data set using “.shape”.
print(df.shape)

# know the columns and their corresponding data types and if contain null values or not
print(df.info())

# getting various summary statistics
# Return count, mean, standard deviation, minimum and maximum values and the quantiles of the data.
print(df.describe())

# So I can target individual columns. Columns can be show using the Describe
# Target variable/Dependent variable is discrete and categorical in nature
print(df.Position.unique())

# tells us vote count of each quality score in descending order
print(df.Position.value_counts())

# =================================================================================
# Will run this on Jupyter notebooks
# To check correlation

sns.heatmap(df.isnull(), cbar=False, yticklabels=False, cmap='viridis')

plt.figure(figsize=(6,4))
sns.heatmap(df.corr(),cmap='Blues',annot=False) 

#Quality correlation matrix
k = 12  # number of variables for heatmap
cols = df.corr().nlargest(k, 'quality')['quality'].index
cm = df[cols].corr()
plt.figure(figsize=(10, 6))
sns.heatmap(cm, annot=True, cmap='viridis')


# To check Outliers
l = df.columns.values
number_of_columns=12
number_of_rows = len(l)-1/number_of_columns
plt.figure(figsize=(number_of_columns,5*number_of_rows))
for i in range(0,len(l)):
    plt.subplot(number_of_rows + 1,number_of_columns,i+1)
    sns.set_style('whitegrid')
    sns.boxplot(df[l[i]],color='green',orient='v')
    plt.tight_layout()

# To check distribution-Skewness
plt.figure(figsize=(2*number_of_columns,5*number_of_rows))
for i in range(0,len(l)):
    plt.subplot(number_of_rows + 1,number_of_columns,i+1)
    sns.distplot(df[l[i]],kde=True) 