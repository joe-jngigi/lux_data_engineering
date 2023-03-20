import pandas as pd

df = pd.read_csv('IT Salary Survey EU 2019.csv')
content = str(df)
print(content, file=open('IT Salary Survey EU 2019.txt', 'w', encoding="utf-8"))