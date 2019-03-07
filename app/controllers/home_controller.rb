class HomeController < ApplicationController
  def index
    @vote = Vote.new
    @all_votes = Vote.all
    @votes = 
      [[Vote.blue,'Partido Azul','blue'], 
      [Vote.yellow,'Partido Amarillo','yellow'], 
      [Vote.purple,'Partido Morado','purple'], 
      [Vote.green,'Partido Verde','green'], 
      [Vote.other,'Otro','other']]
  end
end
