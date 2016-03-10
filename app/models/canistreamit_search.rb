class CanistreamitSearch
  include HTTParty

  base_uri "http://www.canistream.it/services"

  def search(movie_name)
    response = self.class.get("/search", query: { movieName: movie_name })
    if response.success?
      response
    else
      raise response.response
    end
  end

  def query(movie_id)
    response = self.class.get("/query", query: { movieId: movie_id,
                                                 attributes: "1",
                                                 mediaType: "streaming"
                                               })
    if response.success?
      response
    else
      raise response.response
    end
  end

  def search_and_query(movie_name)
    response = search(movie_name)

    if response.success?
      response.map do |movie|
        {
          movie: movie,
          availability: query(movie["_id"])
        }
      end
    else
      raise response.response
    end
  end
end
