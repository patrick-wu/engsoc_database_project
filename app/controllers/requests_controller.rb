class RequestsController < ApplicationController

def new
  @request = Request.new
end

def create
  @request = Request.new(params.require(:request).permit(:club_id,:year, :category,
  :amount_requested,:amount_approved,:funding_round,:comments,:students_affected))
  if @request.save
    puts "it's saved"
  end
  redirect_to root_path
end

end
