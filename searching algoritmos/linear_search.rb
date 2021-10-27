numbers = [1,2,3,4,5,6,7,8,9]

x = 5

def linear_search (numbers, x)
    numbers.each do |number|
        if number == x
            number
        else
            -1
        end
    end
end

result = linear_search(numbers, x)
if (result == -1)
    puts "Numero não encontrado"
else
    puts "Numero encontrado"
end
