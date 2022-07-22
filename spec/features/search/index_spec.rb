require 'rails_helper'

RSpec.describe 'Search Index Page' do
  it "shows total results" do
    visit "/"
    fill_in :nation, with: "Fire Nation"
    # find(".nation option[Fire Nation]").select_option
    click_button "Search For Members"
    save_and_open_page
  end
end
