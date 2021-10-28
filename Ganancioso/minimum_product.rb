def minProductSubset(a, n)
    if (n == 1)
        return a[0]
    end
    # Find count of negative numbers,
    # count of zeros, maximum valued
    # negative number, minimum valued
    # positive number and product
    # of non-zero numbers
    max_neg = -1.0 / 0
    min_pos = 1.0 / 0
    count_neg = 0
    count_zero = 0
    prod = 1
    for i in 0...n
 
        # If number is 0, we don't
        # multiply it with product.
        if (a[i] == 0)
            count_zero = count_zero + 1
            next
        end
 
        # Count negatives and keep
        # track of maximum valued
        # negative.
        if (a[i] < 0)
            count_neg = count_neg + 1
            max_neg = [max_neg, a[i]].max
        end
        # Track minimum positive
        # number of array
        if (a[i] > 0)
            min_pos = [min_pos, a[i]].min
            prod = prod * a[i]
        end
    end

    # If there are all zeros
    # or no negative number
    # present
    if (count_zero == n || (count_neg == 0 && count_zero > 0))
        return 0
    end
    # If there are all positive
    if (count_neg == 0)
        return min_pos
    end
    # If there are even number of
    # negative numbers and count_neg
    # not 0
    if (!(count_neg & 1) && count_neg != 0)
 
        # Otherwise result is product of
        # all non-zeros divided by
        # maximum valued negative.
        prod = prod / max_neg
    end
    return prod
end
 
# Driver code
a = [-1, -1, -2, 4, 3]
n = a.size()
print minProductSubset(a, n)