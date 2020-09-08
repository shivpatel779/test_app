class RegistrationsController < ApplicationController
	before_action :set_user_detail, only: [:show]
	def index
  	@user_details = UserDetail.all
  end

  def show
  end

  def new
  	@user_detail = UserDetail.new
  end

  def create
  	@user_detail = UserDetail.create(user_detail_params)
  	redirect_to registration_path(@user_detail)
  end

  def edit
  end

  def update
  end

  def show
  end

  private
	  def user_detail_params
	    params.require(:user_detail).permit(:name, :age, :dob, :location, :gender, :availability, :image, :file_attachment)
	  end

	  def set_user_detail
	  	@user_detail = UserDetail.find(params[:id])
	  end
end
