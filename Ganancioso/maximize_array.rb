def sol(arr, k, range)
 
    # Sorting given array using
    # in-built java sort function
    i = 0
    sum = 0
 
    while (k > 0)
 
        # If we find a 0 in our
        # sorted array, we stop
        if (arr[i] >= 0)
            k = 0
        else
            arr[i] = (-1) * arr[i]
            k = k - 1
 
        i += 1
        end
    end
 
    # Calculating sum
    for j in 0...range
       sum += arr[j]     
      end
       return sum
end
 
# Driver code
arr = [-2, 0, 5, -1, 2]
array = arr.sort
range = arr.length 
print sol(array, 4, range)