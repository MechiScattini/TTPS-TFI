class HomeController < ApplicationController
  def index
  end

  def get_all_branches
    Branch.all
  end
  helper_method :get_all_branches
  
end
