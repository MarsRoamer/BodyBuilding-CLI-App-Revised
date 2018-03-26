class BodybuildingApp::BodyParts
	attr_accessor :name, :url

	@@all = []

	def self.make_body_parts
		list = Scraper.body_part_importer
		
		list.each do |element|
			obj = self.new
			obj.name = element[:body_part]
			obj.url = element[:url]
			@@all << obj
			# binding.pry
		end
	end

	def self.all
		@@all 
	end










end