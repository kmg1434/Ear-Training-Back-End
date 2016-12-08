class GamesController < OpenReadController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    # @games = Game.all.order(score: :desc)
    @games = Game.where(:user_id => current_user.id).order(score: :desc)

    render json: @games
  end

  # GET /games/1
  # GET /games/1.json
  def show
    render json: @game
  end

  # POST /games
  # POST /games.json
  def create
    @game = current_user.games.build(game_params)

    if @game.save
      render json: @game, status: :created
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    @game = current_user.games.find(params[:id])

    if @game.update(game_params)
      head :no_content
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy

    head :no_content
  end

  private

  def set_game
    @game = current_user.games.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:user_id, :lvl, :score)
  end
end
