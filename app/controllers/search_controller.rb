class SearchController < ApplicationController
  def index
    @characters = AvatarFacade.nation_results(params[:nation])
  end
end
