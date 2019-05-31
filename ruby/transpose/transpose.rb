class Transpose

  def self.transpose(input)
    transposed_array = input.split("\n").map { |row|
      row.chars
    }.transpose
      transposed_array.delete_if {|line| line == [" "]}.map {|column| column.join }.join("\n")
  end
end
