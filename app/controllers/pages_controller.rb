class PagesController < ApplicationController
  def home
    @animes = Anime.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end
