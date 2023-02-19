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

print(df.Position.unique())
