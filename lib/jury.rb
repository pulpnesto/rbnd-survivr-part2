class Jury
	attr_accessor :members

	def initialize
		@members = []
	end

	def add_member(member)
		@members << member
	end

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

	def report_votes(finalists)
		finalists.each{|k,v| puts "#{k} has #{v} votes"}
	end

	def announce_winner(final_votes)
	  winner = final_votes.max_by{|k,v| v}[0]
	  puts "#{winner} has won Survivor!".red
	  winner
	end

end