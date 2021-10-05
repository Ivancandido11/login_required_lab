class SessionsController < ApplicationController
  def new; end

  def create
    if params[:name].empty? || params[:name].nil?
      redirect_to "/sessions/new"
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete :name
  end
end
