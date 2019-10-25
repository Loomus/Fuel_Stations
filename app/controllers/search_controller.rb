class SearchController < ApplicationController
  def index
    render locals: {
      facade: StationsFacade.new(params[:location])
    }
  end
end
