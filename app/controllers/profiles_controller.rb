class ProfilesController < ApplicationController
  before_action :find_profile, only: [:show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all
  end

  def show
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to @profile
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to @profile
    else
      render 'edit'
    end
  end

  def destroy
    @profile.destroy
    redirect_to profiles_path
  end

  private

  def find_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :telephone_number, :status, :user_id)
  end
end
