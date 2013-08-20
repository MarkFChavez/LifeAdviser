class DashboardController < ApplicationController

  before_filter :authenticate_user!

  def index
	@users = User.where("id != ?", current_user.id)
	@my_advices = current_user.advices
  end
end
