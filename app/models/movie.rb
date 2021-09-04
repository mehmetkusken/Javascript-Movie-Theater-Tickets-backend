class Movie < ApplicationRecord

    def self.movies
        request_url = URI.encode("https://imdb-api.com/en/API/InTheaters/k_7dpdwwcs")
        response = `curl "#{request_url}"`
        json = JSON.parse(response)
        data = json["items"]
        data.each do |d|
        movie = Movie.create()
        movie.movie_name = d["title"]
        movie.release_date = d["year"]
        movie.movie_detail = d["plot"]
        movie.movie_image = d["image"]
        movie.stars = d["stars"]
        movie.director = d["directors"]
        movie.genres = d["genres"]
        movie.runtime = d["runtimeStr"]
        movie.save
        end
    end
end
