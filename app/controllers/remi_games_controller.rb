class RemiGamesController < ApplicationController
  before_action :set_remi_game, only: [:show, :edit, :update, :destroy]

  def index
    @remi_games = RemiGame.all
    # redirect_to new_remi_games_url
  end

  def show
  end

  def new
    @remi_game = RemiGame.new
  end

  def edit
  end

  def create
    @remi_game = RemiGame.new(remi_game_params)

    respond_to do |format|
      if @remi_game.save
        format.html { redirect_to @remi_game, notice: 'Remi game was successfully created.' }
        format.json { render :show, status: :created, location: @remi_game }
      else
        format.html { render :new }
        format.json { render json: @remi_game.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @remi_game.update(remi_game_params)
        format.html { redirect_to @remi_game, notice: 'Remi game was successfully updated.' }
        format.json { render :show, status: :ok, location: @remi_game }
      else
        format.html { render :edit }
        format.json { render json: @remi_game.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @remi_game.destroy
    respond_to do |format|
      format.html { redirect_to remi_games_url, notice: 'Remi game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_remi_game
      @remi_game = RemiGame.find(params[:id])
    end

    def remi_game_params
      params.require(:remi_game).permit(:name, :player_1, :player_2, :player_3, :player_4)
    end
end
