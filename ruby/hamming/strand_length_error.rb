class StrandLengthError < ArgumentError

  def initialize(message = 'DNA strands must be equal lengths')
    super
  end
end

