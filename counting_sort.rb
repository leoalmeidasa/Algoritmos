def ord(array)
    min_max = array_max_min(array)
    count_sort(array, min_max[0], min_max[1])
  end

  def array_max_min(array)
    array.minmax
  end

  def count_sort(array, min, max)
    if min > max
      return 'algo deu errado pqp'
    else
      n = max - min + 1
      size = array.length
      aux = Array.new(size)
      count = Array.new(n, 0)

      (0...size).each do |i|
         count[array[i] - min] += 1
      end
      (1...n).each do |i|
       count[i] += count[i - 1]
       
      end
      (0...size).each do |i|
        aux[count[array[i] - min] - 1] = array[i]
        count[array[i] - min] -= 1
      end
      (0...size).each do |i|
        array[i] = aux[i]
      end
      array
    end
end

  array = [1,4,10,2,3,32,0]
  p ord(array)
  