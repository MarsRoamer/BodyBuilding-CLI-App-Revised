class BodybuildingApp::Exercises
	attr_accessor :exercises

	def self.make_from_url(url)
		@exercises = []
		@exercises = Scraper.exercise_importer(url)
	end




end