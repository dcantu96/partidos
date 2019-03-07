class HomeController < ApplicationController
  def index
    @vote = Vote.new
    @votes = helpers.all_votes
  end
end
