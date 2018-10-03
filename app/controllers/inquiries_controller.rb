class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end


def create
  @inquiry = Inquiry.new inquiry_params
    if @inquiry.save
      flash[:success] = " Thanks One on of agents will get back to you soon"
        redirect_to root_path
    else
    render 'new'

    end
  end


  private

  def inquiry_params
    params.require(:inquiry).permit(:full_name,:phone,:email, :message)
  end
end
