numbers = [1,2,3,4,5,6,7,8,9]

x = 7

def binary_search(numbers, x)
    first = 0
    final = numbers.length - 1

    while first <= final
    
    mid = (first + final) / 2
    
        if numbers[mid] == x
            return "#{x} encontrado na posição #{mid+1}"
        elsif numbers[mid] > x
            final = mid - 1
        elsif numbers[mid] < x    
            first = mid + 1
        else
            return "Número #{x} não encontrado"
        end
    end
end

puts binary_search(numbers, x)