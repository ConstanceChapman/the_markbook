class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if current_user
      redirect_to teaching_sets_path
    else
      @no_navbar = true
    end
  end
end
