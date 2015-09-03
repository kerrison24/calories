class ProfilesController < ApplicationController
  def index
    @user = current_user
    @profile = current_user.profile
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    @profile.update(profile_params)
    redirect_to @profile
  end

  private
    def profile_params
      params.require(:profile).permit(:goal)
    end
end
