class Jury
  attr_accessor :members

  # Method to set up jury member array.
  def initialize
    @members = []
  end

  # Method to add a new jury member to the existing group of jurors
  def add_member(member)
    @members << member
  end

  # Method to have a jury member randomly vote for a finalist to win
  def cast_votes(finalists)
    votes = {}
    finalists.each {|finalist| votes[finalist.name] = 0}
    @members.each do |member|
      selection = finalists.sample
      votes["#{selection}"] += 1
      puts "#{member} votes for #{selection}".blue
    end
    votes
  end

  # Method to output the vote count for each finalist
  def report_votes(finalists)
    finalists.each{|k,v| puts "#{k} has #{v} votes"}
  end

  # Method to output the finalist with the most votes
  def announce_winner(final_votes)
    winner = final_votes.max_by{|k,v| v}[0]
    puts "#{winner} has won Survivor!".red
    winner
  end
end