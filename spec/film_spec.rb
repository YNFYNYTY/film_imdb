require_relative '../imdb'


class FilmDB
	def show
		["www.google.com"]
	end
end

before :each do
		@movie_db=double("MovieDB")
		@posters = FilmDB.new.show
	end

describe "poster problem" do

	it "must give none poster if we have none" do
		movie_db.stub(:posters).and_return([])
		expect(posters).to eq([])
	end

	it "must give us one poster if we have one" do
		movie_db.stub(:posters).and_return(["wwww.google.com"])
		expect(posters).eq (["wwww.google.com"])
	end

end


