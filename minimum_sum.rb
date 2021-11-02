def minSum(array)
     min_val =  array.min

     return min_val * (array.length-1)
end

array = [7, 2, 3, 4, 5, 6]
print minSum(array)