require 'matrix'

class Transpose

 def self.transpose(input)
    matrix = Matrix[(input.split("\n").map { |row|
      row.chars
    })].transpose
    # matrix.to_a #.map { |column| column }
    matrix.to_a.map {|column| column.join }.join("\n")
  end
end

