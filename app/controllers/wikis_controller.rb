class WikisController < ApplicationController
  def search
    if params[:keyword]
      @results = Wikipedia.find(params[:keyword])
    else
      @results = ""
    end
  end
end
