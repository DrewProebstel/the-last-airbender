require 'rails_helper'

RSpec.describe AvatarFacade do
  describe "characters by nation" do
    it "can create character objects based on query results" do
      characters = AvatarFacade.nation_results("Fire+Nation")

      expect(characters).to be_a Array
      expect(characters).to be_all Character
    end
  end
end
