class BodybuildingApp::BodyParts
	attr_accessor :name, :url, :exercises

	@@all = []

	def self.make_body_parts
		# list = Scraper.body_part_importer

		Scraper.body_part_importer.each do |element|
			obj = self.new
			obj.name = element[:body_part]
			obj.url = element[:url]
			obj.exercises = Scraper.exercise_importer(obj.url)
			
			@@all << obj
			# obj
			# binding.pry
		end
		# binding.pry
	end

	

	def self.all
		@@all 
	end










end