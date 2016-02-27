require_relative "tribe"

class Game
  attr_reader :tribes

  # Method to setup a game with tribes
  def initialize(*all_tribes)
    @tribes = []
    all_tribes.each {|tribe| @tribes << tribe}
  end

  # Method to add a tribe to the game
  def add_tribe(new_tribe)
    @tribes << new_tribe
  end

  # Method to return the losing team of an immunity challenge
  def immunity_challenge
    @tribes.sample
  end

  # Method to clear the tribes from the tribe array
  def clear_tribes
    @tribes = []
  end

  # Method to merge existing tribes into one tribe
  def merge(new_tribe)
    merged_members = []
    @tribes.each {|tribe| merged_members += tribe.members}
    merged_tribe = Tribe.new({name: new_tribe, members: merged_members})
    clear_tribes
    add_tribe(merged_tribe)
    merged_tribe
  end

  # Method to retrun the winning contestant of an individual immunity challenge
  def individual_immunity_challenge
    @tribes[0].members.sample
  end

end