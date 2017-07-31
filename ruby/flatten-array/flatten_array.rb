def flatten_array(array_to_flat)
  result = []

  array_to_flat.each do |item|
    if item.is_a?(Array)
      result += flatten_array(item)
    else
      result += [item]
    end
  end

  return result
end