class BodybuildingApp::CLI

	def call
		# puts "List of bodyparts"
		BodybuildingApp::BodyParts.make_body_parts
		list_body_parts
		menu
	end

	def list_body_parts
		i = 1
		BodybuildingApp::BodyParts.all.each do |element|
			puts "#{i}. #{element.name}"
			i +=1
			# binding.pry
		end
		
	    
	end

	def menu

		puts "\n\nEnter the number of the body part for which you'd like to see a list of exercises, when finished type exit:"
		
		input = gets.strip.downcase
		while input != 'exit'
			
			case input
			when "list"
				list_body_parts
			when "1"
				puts "display exercises for bodypart 1"
			when "2"
				puts "display exercises  for bodypart 2"
			end

			puts "Please make a selection to exercises for other bodyparts, to see the list again type list,  or if finished type exit"
			input = gets.strip.downcase
		end
		
	end


end