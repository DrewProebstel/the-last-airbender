class AvatarService

  def self.conn
    Faraday.new('http://last-airbender-api.herokuapp.com/') do |faraday|
    end
  end

  def self.characters_by_nation(query)
    response = conn.get("api/v1/characters?affiliation=#{query}&perPage=10000")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
