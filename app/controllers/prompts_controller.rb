class PromptsController < ApplicationController
  def create
    @school = School.find(params[:school_id])
    @prompt = @school.prompts.create(prompt_params)

    redirect_to :back
  end

private
  def prompt_params
    params.required(:prompt).permit(:question)
  end
end
