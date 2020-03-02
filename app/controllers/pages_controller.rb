class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @projects = Project.all
    @events = Event.all
  end
end
