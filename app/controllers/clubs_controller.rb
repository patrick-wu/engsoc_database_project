class ClubsController < ApplicationController

  before_action :set_club, only:[:show,:edit,:update]

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(club_params)
    if @club.save
      puts "it's saved"
    end
    redirect_to root_path
  end

  def index
    @clubs=Club.all
  end

  def show
    @requests=@club.requests.all
  end

  def edit
  end

  def update
    if @club.update(club_params)
      puts "successfully updated"
    end
    redirect_to club_path(@club)
  end

  private
  def set_club
    @club=Club.find(params[:id])
  end

  def club_params
    params.require(:club).permit(:name, :category,:email,:founding_year,:website,:email)
  end
end
