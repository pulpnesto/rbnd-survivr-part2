class Tribe
  attr_accessor :name, :members

  # Method to setup tribe with name and an array of members.
  def initialize (options={})
    @name = options[:name]
    @members = options[:members]
    puts "#{@name} has been created.".pink
  end

  # Duck typing the String method to_s
  def to_s
    @name
  end

  # Method to evict a member of a tribe
  def tribal_council(options = {})
    evictee_array = @members.reject{|value| value == options[:immune]}
    evictee = evictee_array.sample
    @members.delete(evictee)
    evictee
  end
end