class BinarySearch
  def search(value, list)
    raise ArgumentError, 'the list must be sorted' unless list.sort == list

    case value <=> list[middle_index(list)]
    when 0
      value
    when 1
      sublist = list[middle_index(list)+1..-1]
      search(value, sublist)
    when -1
      sublist = list[0...middle_index(list)]
      search(value, sublist)
    end
  end

  def middle_index(list)
    list.size/2
  end
end
