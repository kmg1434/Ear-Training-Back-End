class LevelsController < ApplicationController
  before_action :set_level, only: [:show, :update, :destroy]

  # GET /levels
  # GET /levels.json
  def index
    @levels = Level.all

    render json: @levels
  end

  # GET /levels/1
  # GET /levels/1.json
  def show
    render json: @level
  end

  # POST /levels
  # POST /levels.json
  def create
    @level = Level.new(level_params)

    if @level.save
      render json: @level, status: :created, location: @level
    else
      render json: @level.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /levels/1
  # PATCH/PUT /levels/1.json
  def update
    @level = Level.find(params[:id])

    if @level.update(level_params)
      head :no_content
    else
      render json: @level.errors, status: :unprocessable_entity
    end
  end

  # DELETE /levels/1
  # DELETE /levels/1.json
  def destroy
    @level.destroy

    head :no_content
  end

  private

    def set_level
      @level = Level.find(params[:id])
    end

    def level_params
      params[:level]
    end
end
