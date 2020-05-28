class TitleGenerator 
	def initialize topic
		@topic = topic
	end
	def create_titles
		title = title_ideas.sample(3)
		title.each do |title|
		puts title.gsub! "{topic}", @topic
		end
	end
	def title_ideas
		[
			"the dynamic of {topic} in 2020",
			"x ways to become the best at {topic}",
			"how to {topic}",
			"x facts about {topic}",
			"x things you didnt know about {topic}",
			"x ways to monitize {topic}",
		]
	end
end

puts "Please enter your topic"
topic = gets.chomp


generator = TitleGenerator.new topic
generator.create_titles