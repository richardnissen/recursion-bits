class MergeSort
  def self.merge(a, b)
    if a.empty?
      return b
    end
    if b.empty?
      return a
    end
    smallest_number = if a.first < b.first
      a.shift
    else
      b.shift
    end
    [smallest_number].concat(merge(a, b))
  end

  def self.sort(arr)
    if arr.size <= 1
      return arr
    end

    half = (arr.size / 2).round
    left = arr.take(half)
    right = arr.drop(half)

    merge(sort(left), sort(right))
  end
end
