class BodybuildingApp::CLI

	attr_reader :parts
	@parts = []

	def call
		# puts "List of bodyparts"

		BodybuildingApp::BodyParts.make_body_parts
		
		@parts = BodybuildingApp::BodyParts.all
		

		
		list_body_parts
		menu

	end


	def list_body_parts
		i = 1
		@parts.each do |element|
			# puts "#{i}. #{element[:body_part]}"
			puts "#{i}. #{element.name}"

			i +=1
		
		end
	end

	def exit
		puts "Great workout today!"
	end

	def menu

		puts "\n\nEnter the number of the body part for which you'd like to see a list of exercises, when finished type '0' and hit enter"
		
		input = gets.strip
		
		while input != 'exit'
			if input == 'list'
				list_body_parts
			else

				var = input.to_i
				if var > 0 && var < 19
			# if input > '0' && input < '19'
				# var = input.to_i
				# binding.pry
					puts "Here is a list of exercises for your #{@parts[var - 1].name}\n\n"
					puts @parts[var - 1].exercises
					puts "\n\n"
				else
					puts "Please make a valid selection"
				end
			
		
			end
				
				

			
			# case input
			# when "list"
			# 	list_body_parts
			# when "1"
			# 	# puts @parts[0]
			# when "2"
			# 	puts "display exercises  for bodypart 2"
			# end

			puts "Please make a selection to exercises for other bodyparts, to see the list again type list,  or if finished type '0' and hit enter"
			input = gets.strip
		end
		exit
		
	end


end