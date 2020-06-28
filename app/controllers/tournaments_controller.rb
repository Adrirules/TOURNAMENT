class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :edit, :update, :destroy]

  def index
    @tournaments = Tournament.all
  end

  def show
  end

  def new
    @tournament = Tournament.new
  end

  def create
    Tournament.create(tournament_params)
    redirect_to tournaments_path
  end

  def edit
  end

  def update
    @tournament.update(tournament_params)
    redirect_to tournaments_path
  end

  def destroy
    @tournament.destroy
    redirect_to tournaments_path
  end

  private

  def tournament_params
    params.require(:tournament).permit(:name, :start_tournament, :end_tournament, :photo, :activity)
  end

   def set_tournament
    @tournament = Tournament.find(params[:id])
  end
end
