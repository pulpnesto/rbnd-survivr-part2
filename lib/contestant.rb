class Contestant
  attr_reader :name

  # Method to set up a contestants name
  def initialize(name)
    @name = name
  end

  # Method to duck type the Sting method to_s
  def to_s
    @name
  end
end