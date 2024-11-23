class PlayersController < ApplicationController
  def show
    @player = Player.find(params.expect(:id))
  end
end
