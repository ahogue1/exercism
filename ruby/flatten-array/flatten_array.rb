class FlattenArray
  def self.flatten(item)
    flattened = item.flatten
    flattened.delete_if { |x| x == nil }
    return flattened
  end
end
