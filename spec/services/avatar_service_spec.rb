require 'rails_helper'

RSpec.describe AvatarService do
  describe "search by nation endpoint" do
    it "gets the top rated movies from this endpoint" do
      query = "Fire+Nation"
      parsed_json = AvatarService.characters_by_nation(query)
      expect(parsed_json).to be_a Array

      first_character = parsed_json.first
      binding.pry

      expect(first_character.keys).to include :allies, :enemies, :name, :affiliation
      expect(first_character[:allies]).to be_a Array
      expect(first_character[:enemies]).to be_a Array
      expect(first_character[:name]).to be_a String
    end
  end
end
