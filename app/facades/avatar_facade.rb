class AvatarFacade

  def self.nation_results(query)
    json = AvatarService.characters_by_nation(query)
    json.map do |character_result|
      Character.new(character_result)
    end
  end
end
