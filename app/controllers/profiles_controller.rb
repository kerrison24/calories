class ProfilesController < ApplicationController
  def index
  end

  private
    def profile_params
      params.require(:profile).permit(:goal)
    end
end
