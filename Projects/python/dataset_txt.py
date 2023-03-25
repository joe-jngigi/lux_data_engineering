import pandas as pd

df = pd.read_csv('indeed_jobs_uk.csv')
content = str(df)
print(content, file=open('indeed_jobs_uk.txt', 'w', encoding="utf-8"))