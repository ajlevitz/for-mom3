class ResponsesController < ApplicationController
  def create
    @response = Response.create(response_params)

    redirect_to :back
  end

private
  def response_params
    params.required(:response).permit(:comments, :user_id, :prompt_id)
  end
end