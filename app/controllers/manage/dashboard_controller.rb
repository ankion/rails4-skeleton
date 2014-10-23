class Manage::DashboardController < ApplicationController
  before_action :authenticate_admin!
  layout 'manage'

  def index
  end
end
