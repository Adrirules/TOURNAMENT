class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def show
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    #@team.user = current_user
    #@team = current_user.team.build.(team_params)
    if @team.save
      redirect_to teams_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @team.update(team_params)
    redirect_to teams_path
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

  def team_params
    params.require(:team).permit(:name, :tournament_id, :user)
  end

   def set_team
    @team = Team.find(params[:id])
  end
end
