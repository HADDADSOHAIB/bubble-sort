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
  raise 'This is an exception' unless block_given?

  i = 0
  arr.length.times do
    (arr.length - 1).times do
      block_vlaue = yield(arr[i], arr [i + 1])
      if block_vlaue.positive?
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

p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
