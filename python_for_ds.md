# Python for Data Science

Python's ease of use, adaptability, and general-purpose nature have led to the language's widespread adoption in the field of data science. In spite of the fact that it wasn't the first major programming language, its status as one has steadily increased over time. About two-thirds of data scientists in 2018 said they used Python on a daily basis, making it the most popular language among analytics experts.

In order to get started on Python for data science, it is important to first learn and understand the basics of Python as a Programming language. TO pratices this one need to install an environment to allow us to code Python. There are various ways to achieve this. I will discus two major ways. The first step involves installing a Python environment. This is the best way to learn how to do this as it will give you a chnace on how to setup environments especially if you are using a Windows. Linux system usually comes pre-installed with Python.

## Instalation of a Python Environment

### **Manual Installation**

Download a the latest version of python.[Python](https://www.python.org/downloads/). Install it on your Windows or MAC. Install a VS code text Editor and navigate to Extensions. Find necessary extensions. My mos prefered is ``Pylance`` as it gives me an intellisense for Python. Here you can practise the Python basics through tutorials, but the best way to learn is through doing simple projecst as you progress and make use of the free documentations from the internet.
>>Note: To use Python files have an extension of `.py`. To make a prject or a file, On your text editor Click on files>New file and name it as -anyname.py- then save it in your favourite place or your projects folder

### **Setup and installation of the Python environment for data science(Anaconda, Jupyter Notebook)**

Download and install Anaconda: Anaconda is a free and open-source distribution of Python that includes a large number of data science packages and libraries.[Anaconda](https://www.anaconda.com/products/distribution). Jupyter Notebook is included with Anaconda, so you can start using it right away. The Jupyter Notebook is an open-source web application that lets data scientists make and share documents that include live code, equations, computational output, visualizations, and other multimedia resources, along with explanatory text [JupyterNotebooks](https://odsc.medium.com/why-you-should-be-using-jupyter-notebooks-ea2e568c59f2#:~:text=The%20Jupyter%20Notebook%20is%20an,text%20in%20a%20single%20document.). To launch Jupyter Notebook, open Anaconda Navigator and click on the "Launch" button next to Jupyter Notebook. This will open Jupyter Notebook in your default web browser. Click on the "New" button in the top right corner of the Jupyter Notebook interface and select "Python 3".

## Python data science basics

### **DataTypes**

To learn practise data science, there need to be knowledge for the datatypes used in Python and how to manipulate the. There are four basics datatypes of Python which include
>
>1. Lists: A list is a collection of items that can be of any type. Lists are mutable, meaning they can be changed after they are created.
>1. Dictionaries: A dictionary is a collection of key-value pairs. Each key is associated with a value, which can be of any type. Dictionaries are mutable, and you can add, remove, or modify key-value pairs.
>1. Tuples: A tuple is similar to a list, but it is immutable, meaning it cannot be changed after it is created. Tuples are often used to represent a collection of related values.

### **Tools**

There are many tools and libraries available in Python for data science. The common tools used for Data science in Python include:
>
>1. NumPy: NumPy is a Python library that is often used to work with numerical data. It gives you tools that are fast and easy to use for working with arrays, which are groups of data that can be any size. NumPy also has a number of functions, like addition, multiplication, and trigonometric functions, that can be used to do math operations on arrays.
>1. Pandas: Pandas is a library for Python that lets you work with data in tables. It has data structures like the Series and the DataFrame, which are like improved lists and dictionaries, respectively. Pandas also has tools that let you read and write data in different formats, like CSV and Excel.
>1. Matplotlib: Matplotlib is a Python library that lets you make visuals of data. It has many tools for making charts and plots, such as line charts, scatter plots, and histograms. Matplotlib can be used to make both static and interactive visualizations that can be saved as image files or put into web applications.

Other common used for machine Learning include
>
>1. Scikit-learn is a library that is used to teach machines how to do things. It has a lot of algorithms for things like regression, classification, clustering, and reducing the number of dimensions.
>1. TensorFlow is a library that is used to build and train deep learning models. It gives you a strong and flexible base on which to build a wide range of machine learning models.

### **Data Cleaning**

Cleaning and manipulating data are important parts of any data science project, since data is rarely clean and organized enough to be analyzed right away.
>
>1. Aggregating data: Pandas has methods for aggregating data, like groupby(), which groups data by a given column, and aggregate(), which does calculations on grouped data.
>1. Combining data: Methods like merge() and concat can be used to combine data from different sources ().
>1. Handling missing data: Pandas gives you ways to find missing data in a DataFrame, filter it, and fill it in.
>1. Renaming columns: You can change the names of columns in a DataFrame by using the rename() method.
>1. Getting rid of duplicates: The drop duplicates() method can be used to find and get rid of duplicates.
>1. Filtering and sorting data: Methods like loc[, iloc[, and sort values can be used to filter and sort data ().
