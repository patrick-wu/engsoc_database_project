class ClubsController < ApplicationController

  before_action :set_club, only:[:show]

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(params.require(:club).permit(:name, :category,:email))
    if @club.save
      puts "it's saved"
    end
    redirect_to root_path
  end

  def index
    @clubs=Club.all
  end

  def show
  end

  private
  def set_club
    @club=Club.find(params[:id])
  end
end
