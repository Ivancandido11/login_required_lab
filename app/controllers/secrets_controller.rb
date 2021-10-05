class SecretsController < ApplicationController
  def show
    redirect_to "/sessions/new" if session[:name].nil?
  end
end
