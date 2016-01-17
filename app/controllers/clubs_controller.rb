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
    if (params[:cat]&& Category.all.collect(&:name).include?(params[:cat][:name]))
      @clubs=Club.where(category_id: Category.find_by(name: params[:cat][:name]).id)
    else
      @clubs=Club.all
    end
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
    params.require(:club).permit(:name, :category_id,:email,:founding_year,:website,:email)
  end
end
