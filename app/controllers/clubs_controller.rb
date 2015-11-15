class ClubsController < ApplicationController

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

end
