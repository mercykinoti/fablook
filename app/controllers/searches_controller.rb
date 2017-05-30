class SearchesController < ApplicationController

  def index
    @results = PgSearch.multisearch(params[:search])
    #
    # if @results.exists?
    #   redirect_to searches_index_path
    # else
    #   flash.now[:alert] = 'no match found'
    # end

  end

end
