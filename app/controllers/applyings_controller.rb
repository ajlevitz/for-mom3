class ApplyingsController < ApplicationController
  def apply_here
    @id = params[:school_id]

    if current_user.schools.find_by id: @id
      flash[:notice] = "You're already applying here"
    else
      current_user.schools << School.find(@id)
    end

    redirect_to root_url
  end
end
