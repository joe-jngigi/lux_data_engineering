given_array = [23, 3, 4, 6, 6, 76, 34, 56, 60, 3, 1, 2, 45]
count_add = 0
for num in given_array:
    count_add = count_add + num

# Printing the sun of all 
print(f'The sum of all numbers in the array: {count_add}')

# alternatively
sum_of_array = sum(given_array)
print(f'Alternatively: {sum_of_array}')