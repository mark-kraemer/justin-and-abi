class GuestsController < ApplicationController

  before_filter :authorize, only: :index

  def index

  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new guest_params
    if @guest.save
      redirect_to thankyou_path
    else
      render :new
    end
  end

  def thankyou
  end

  private

  def guest_params
    params.require(:guest).permit :name, :email, :head_count, :attending, :comments
  end
end
