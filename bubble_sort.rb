def bubble_sort(arr)
  i = 0
  arr.length.times do
    (arr.length - 1).times do
      if arr[i] > arr[i + 1]
        temp = arr[i + 1]
        arr[i + 1] = arr[i]
        arr[i] = temp
      end
      i += 1
    end
    i = 0
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(arr)
  return 'ERROR, a block should provided' unless block_given?

  i = 0
  arr.length.times do
    (arr.length - 1).times do
      block_vlaue = yield(arr[i], arr [i + 1])
      if  block_vlaue > 0
        temp = arr[i + 1]
        arr[i + 1] = arr[i]
        arr[i]=temp
      end
      i += 1
    end
    i = 0
  end
  arr
end

p bubble_sort_by(["hi","hello","hey"]) { |left, right| left.length - right.length }