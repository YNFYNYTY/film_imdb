require 'sinatra'
require 'Imdb'

#params[:movies] = Imdb::Search.new("funny")

get '/' do
	erb  :index  #will load showmovies.erb
end

post  '/look' do
	@film = Imdb::Search.new(params[:search])
	#@sometitle = @film.movies[0].title

	@ten_movies = []

	@film.movies.take(10).each do |movie|
		if movie.poster != nil
			@ten_movies.push(movie.poster)
		end
	end
	erb :show #will load show.erb
end


