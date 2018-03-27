class BodybuildingApp::CLI

	attr_reader :parts
	@parts = []

	def call
		BodybuildingApp::BodyParts.make_body_parts
		@parts = BodybuildingApp::BodyParts.all
		puts "\n\nWelcome, have a great workout!!  Please select from the list below to see exercises! \n\n"
		list_body_parts
		menu
	end

	def list_body_parts
		i = 1
		@parts.each do |element|
			puts "#{i}. #{element.name}"
			i +=1	
		end
	end

	def exit
		puts "Great workout today, your future self thanks you!!"
	end

	def menu
		puts "\n\nEnter the number of the body part for which you'd like to see a list of exercises, when finished type 'exit'."	
		input = gets.strip
		while input != 'exit'
			if input == 'list'
				list_body_parts
			else
				var = input.to_i
				if var > 0 && var < 19
					puts "Here is a list of exercises for your #{@parts[var - 1].name}\n\n"
					puts @parts[var - 1].exercises
					puts "\n\n"
				else
					puts "Please make a valid selection\n\n"
				end	
			end
			puts "To view the list of bodyparts again, enter 'list', or to quit type 'exit'."
			input = gets.strip
		end
		exit		
		# input = gets.strip.to_i	
		# puts BodybuildingApp::Exercises.make_from_url(@parts[input - 1].url)
	end

end