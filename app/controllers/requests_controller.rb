class RequestsController < ApplicationController

  before_action :find_request, only: [:edit,:update,:show]

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      puts "it's saved"
    end
    redirect_to root_path
  end

  def show
    @request=Request.find(params[:id])
  end

  def edit
    @request=Request.find(params[:id])
  end

  def update
    if @request.update(request_params)
      #redirect_to root_path
      redirect_to club_path(@request.club)
    end
  end

  private
    def find_request
      @request=Request.find(params[:id])
    end

    def request_params
      params.require(:request).permit(:club_id,:year, :category,
      :amount_requested,:amount_approved,:funding_round,:comments,:students_affected)
    end

end
