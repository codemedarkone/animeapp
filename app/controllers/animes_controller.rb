class AnimesController < ApplicationController
  before_action :set_anime, only: [:show, :edit, :update, :destroy, :toggle_status]


  def index
    @animes = Anime.all
  end

  def actionanime
    @actionanime = Anime.action_anime
  end

  def new
    @anime = Anime.new
    3.times { @anime.technologies.build }

  end

  def show

  end

    def edit

  end

  def create
    @anime = Anime.new(anime_params)

    if @anime.save
      redirect_to @anime
    else
      render :new
    end
  end

  def update
    if @anime.update(anime_params)
      redirect_to @anime
    else
      render :edit
    end
  end

  def destroy

    if @anime.destroy
      redirect_to animes_path
    else
      render @anime
    end

  end

  def toggle_status
    if @anime.draft?
      @anime.published!
    elsif @anime.published?
      @anime.draft!
    end
   redirect_to animes_path
  end


  private


  def set_anime
    @anime = Anime.friendly.find(params[:id])
  end

  def anime_params
     params.require(:anime).permit(:title, 
                                    :subtitle, 
                                    :body, 
                                    technologies_attributes: [:name]
                                    )
  end
end
