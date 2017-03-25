class WelcomeController < ApplicationController
  def index
    unless session[:user_id].nil?      
      redirect_to homeworks_url
    end
  end
end
