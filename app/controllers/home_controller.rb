class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  def index
  end

  def about
  end

  def contact
  end

  def shop
  end
  
  def detailproduct
  end
  
end
