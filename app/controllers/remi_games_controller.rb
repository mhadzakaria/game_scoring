class RemiGamesController < ApplicationController
  before_action :set_remi_game, only: [:show, :edit, :update, :destroy]

  # GET /remi_games
  # GET /remi_games.json
  def index
    @remi_games = RemiGame.all
  end

  # GET /remi_games/1
  # GET /remi_games/1.json
  def show
  end

  # GET /remi_games/new
  def new
    @remi_game = RemiGame.new
  end

  # GET /remi_games/1/edit
  def edit
  end

  # POST /remi_games
  # POST /remi_games.json
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

  # PATCH/PUT /remi_games/1
  # PATCH/PUT /remi_games/1.json
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

  # DELETE /remi_games/1
  # DELETE /remi_games/1.json
  def destroy
    @remi_game.destroy
    respond_to do |format|
      format.html { redirect_to remi_games_url, notice: 'Remi game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remi_game
      @remi_game = RemiGame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def remi_game_params
      params.require(:remi_game).permit(:name, :player_1, :player_2, :player_3, :player_4)
    end
end
