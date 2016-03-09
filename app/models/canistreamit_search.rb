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

  def movie(movie_id)
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
end
