require_relative "tribe"

class Game
  attr_reader :tribes
  def initialize(*all_tribes)
    @tribes = []
    all_tribes.each {|tribe| @tribes << tribe}
  end

  def add_tribe(new_tribe)
    @tribes << new_tribe
  end

  def immunity_challenge
    @tribes.sample
  end

  def clear_tribes
    @tribes = []
  end

  def merge(new_tribe)
    merged_members = []
    @tribes.each {|tribe| merged_members += tribe.members}
    merged_tribe = Tribe.new({name: new_tribe, members: merged_members})
    clear_tribes
    add_tribe(merged_tribe)
    merged_tribe
  end

  def individual_immunity_challenge
    @tribes[0].members.sample
  end

end