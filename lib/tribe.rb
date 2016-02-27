class Tribe
	attr_accessor :name, :members

	def initialize (options={})
		@name = options[:name]
		@members = options[:members]
	  puts "#{@name} has been created."
	end

  def to_s
  	@name
  end

  def tribal_council(options = {})
    evictee_array = @members.reject{|value| value == options[:immune]}
    evictee = evictee_array.sample
    @members.delete(evictee)
    evictee
  end
end