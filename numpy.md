# NumPy

[NumPy](https://numpy.org/doc/stable/user/whatisnumpy.html) is a fundamental python package that is used in scientific computing. It is simply **Num**eric **Py**thon, whic lets us process and manipulate numbers and and carry out mathematical operations. It provides a number of useful functions for performing mathematical and statistical operations on arrays and matrices. At the core of the package, NumPy core fuctionality is based on **nd-array**. nd-array is a multidmenstional array in python, which has a fixed size, that means it is not dynamic like the case lists in Python. It allows for fast code performance, where the nd-array allows for efficient computation on arrays, even with large datasets

>**Why is Numpy Fast while working with large datasets?** NumPy is built on top of the C. It uses a contiguous(adjecent/neighboring) block of memory to store data in an array for better memory management. This memory management allows vectorization -- which describes the absence of any explicit looping, indexing, etc.

## Usage of NumPy

We don't usually employ numpy directly oftenly, but important tools used in data manipulation like **Matplotlib** and **Pandas** rely on numpy for numeric processing. _**Check out memory management**_ and binary in computing. For the code to be very fast, it requires that one is able to use every `bit` of computer memory, and also efficiently use registers and memory of the Processor or the GPU.
> CPUs are designed to be general-purpose computing units that can handle a wide variety of tasks, while GPUs are specialized processing units that are optimized for performing complex mathematical and graphical calculations.

The reason NumPy is important while processing large data; in particular numbers, is because it can allow someone to control number of bits so as it can take less memory space. These are the supported types in NumPy

| unit | Explain |
|------|:-----------|
|`bool`|A single bit of information that can be either True or False|
|`int8`|An 8-bit integer that can represent values between -128 and 127|
|`int16`| A 16-bit integer that can represent values between -32,768 and 32,767|
|`int32`|A 32-bit integer that can represent values between -2,147,483,648 and2,147,483,647 |
|`int64`| A 64-bit integer that can represent values between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807|
|`uint8`|An 8-bit unsigned integer that can represent values between 0 and 255|
|`uint16`|A 16-bit unsigned integer that can represent values between 0 and 65,535|
|`uint32`|A 32-bit unsigned integer that can represent values between 0 and 4,294,967,295|
|`uint64`|A 64-bit unsigned integer that can represent values between 0 and 18,446,744,073,709,551,615|
|`float16`|A 16-bit floating-point number that can represent values with a range of approximately -65504 to 65504 and a precision of about 1/2000|
|`float32`|A 32-bit floating-point number that can represent values with a range of approximately -3.4 x 10^38 to 3.4 x 10^38 and a precision of about 1/10^7|
|`float64`|A 64-bit floating-point number that can represent values with a range of approximately -1.8 x 10^308 to 1.8 x 10^308 and a precision of about 1/10^15|
|

In an example, `int8` cannot store number 129 because because it is outside of the range of values that can be represented by a signed 8-bit integer

```Python
    import numpy as np

    # create an 8-bit integer array using int8 data type

    arr = np.array([129], dtype=np.int8)

    # print the array and its data type

    print(arr)
    print(arr.dtype)
```

The results of the code will be as show. An 8-bit signed integer can represent values in the range of -128 to 127

```text
    [-127]
    int8
```
